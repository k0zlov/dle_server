import 'package:dle_server/contexts/profiles/adapters/primary/api/controllers/profiles_rest_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

@rutaRoute
class ProfilesRoute extends Route {
  ProfilesRoute({required this.controller, required this.authMiddleware});

  final ProfilesRestController controller;
  final AuthMiddleware authMiddleware;

  Endpoint get setUp {
    return Endpoint.post(
      path: 'set-up',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.setUp,
    );
  }

  Endpoint get getCurrent {
    return Endpoint.get(
      path: 'me',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.getCurrentProfile,
    );
  }

  Endpoint get getProfile {
    return Endpoint.get(path: '<userId>', handler: controller.getProfile);
  }

  Endpoint get edit {
    return Endpoint.put(
      path: 'me/edit',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.editProfile,
    );
  }
}
