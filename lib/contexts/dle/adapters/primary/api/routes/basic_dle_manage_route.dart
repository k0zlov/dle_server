import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/parameters_rest_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

Future<Response> handler(Request req) async => Response.json();

@rutaRoute
class BasicDleManageRoute extends Route {
  BasicDleManageRoute({
    required this.authMiddleware,
    required this.parametersController,
  });

  final AuthMiddleware authMiddleware;
  final ParametersRestController parametersController;

  @override
  String get name => 'dle/basic/manage';

  Endpoint get createParameter {
    return Endpoint.post(path: '<dleId>/parameters', handler: handler);
  }
}
