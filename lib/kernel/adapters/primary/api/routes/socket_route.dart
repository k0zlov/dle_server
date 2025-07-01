import 'package:dle_server/kernel/adapters/primary/api/controllers/socket_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

@rutaRoute
class SocketRoute extends Route {
  SocketRoute({required this.controller, required this.authMiddleware});

  final SocketController controller;
  final AuthMiddleware authMiddleware;

  Endpoint get connect {
    return Endpoint.get(
      path: 'connect',
      authRequired: true,
      middlewares: [authMiddleware],
      query: [Field<String>('token')],
      handler: controller.listenUpdates,
    );
  }
}
