import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/http_method.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/request_context.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/request_validation.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/rest/app_endpoint.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/rest/rest_controller.dart';
import 'package:shelf/shelf.dart';

class AuthRestController extends RestController {
  @override
  Set<AppEndpoint> get endpoints => {login};

  final AppEndpoint login = AppEndpoint(
    name: 'login/<test>',
    method: HttpMethod.GET,
    bodySchema: {
      const Parameter<String>('login'),
      const Parameter<String>('password'),
    },
    handler: (RequestContext context) async {
      print(context.params.path);
      print(context.params.query);
      print(await context.params.body);

      return Response.ok('Success');
    },
  );
}
