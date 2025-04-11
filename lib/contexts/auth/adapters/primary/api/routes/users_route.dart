import 'package:dle_server/contexts/auth/adapters/primary/api/controllers/users_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:dle_server/kernel/infrastructure/validators/validators.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

Future<Response> handler(Request req) async => Response.json();

@rutaRoute
class UsersRoute extends Route {
  UsersRoute({required this.controller, required this.authMiddleware});

  final UsersRestController controller;
  final AuthMiddleware authMiddleware;

  Endpoint get getCurrentUser {
    return Endpoint.get(
      path: 'me',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.getCurrentUser,
    );
  }

  Endpoint get changeEmail {
    return Endpoint.put(
      path: 'me/change-email',
      body: [Field<String>('email'), Field<String>('password')],
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.updateUser,
    );
  }

  Endpoint get changePassword {
    return Endpoint.put(
      path: 'me/change-password',
      body: [
        Field<String>('oldPassword'),
        Field<String>('newPassword', validators: [Validators.password()]),
      ],
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.changePassword,
    );
  }
}
