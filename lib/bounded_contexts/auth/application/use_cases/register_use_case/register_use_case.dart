import 'package:dle_server/bounded_contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/bounded_contexts/auth/domain/events/user_registered.dart';
import 'package:dle_server/bounded_contexts/auth/domain/value_objects/auth_tokens/auth_tokens.dart';
import 'package:dle_server/shared_kernel/infrastructure/services/token/token_service.dart';
import 'package:dle_server/shared_kernel/application/ports/event_bus.dart';
import 'package:dle_server/shared_kernel/application/use_cases/use_case.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/exceptions/api_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_use_case.freezed.dart';
part 'register_use_case.g.dart';

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String email,
    required String password,
    required String? ip,
    required String? deviceInfo,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}

class RegisterUseCase implements UseCase<AuthTokens, RegisterParams> {
  const RegisterUseCase({
    required this.domainEventBus,
    required this.usersRepository,
    required this.tokenService,
  });

  final EventBus domainEventBus;

  final UsersRepositoryPort usersRepository;
  final TokenService tokenService;

  @override
  Future<AuthTokens> call(RegisterParams params) async {
    final User? found = await usersRepository.findUserByEmail(params.email);

    if (found != null) {
      throw const ApiException.badRequest('This email is not available');
    }

    User user = User.create(
      email: params.email,
      password: params.password,
    );

    final AuthSession session = AuthSession.create(
      userId: user.id,
      refreshToken: tokenService.generateRefreshToken(user.id),
      ip: params.ip,
      deviceInfo: params.deviceInfo,
      validity: tokenService.refreshTokenValidity,
    );

    user = user.addSession(session);

    final User saved = await usersRepository.saveUser(user);

    domainEventBus.publish(UserRegistered(id: user.id));

    return AuthTokens(
      refreshToken: session.refreshToken,
      accessToken: tokenService.generateAccessToken(saved.id),
    );
  }
}
