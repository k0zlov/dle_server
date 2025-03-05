import 'package:dle_server/bounded_contexts/auth/application/use_cases/register_use_case/register_use_case.dart';
import 'package:dle_server/bounded_contexts/auth/domain/value_objects/auth_tokens/auth_tokens.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/app_server.dart';
import 'package:dle_server/shared_kernel/infrastructure/validation/validators.dart';
import 'package:shelf/shelf.dart';

class AuthRestController extends RestController {
  AuthRestController({
    required this.registerUseCase,
  });

  final RegisterUseCase registerUseCase;

  @override
  Set<AppEndpoint> get endpoints => {register};

  AppEndpoint get register {
    return AppEndpoint(
      method: HttpMethod.POST,
      name: 'register',
      bodySchema: {
        Parameter<String>('email', validators: [Validators.email()]),
        Parameter<String>('password', validators: [Validators.password()]),
      },
      handler: (context) async {
        final AuthTokens tokens = await registerUseCase(
          RegisterParams.fromJson(await context.params.body).copyWith(
            ip: context.ip,
            deviceInfo: context.deviceName,
          ),
        );

        return Response.ok(tokens.toJson());
      },
    );
  }
}
