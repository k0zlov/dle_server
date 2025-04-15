import 'dart:async';

import 'package:dle_server/contexts/profiles/adapters/primary/api/controllers/profiles_rest_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

FutureOr<Response> handler(Request req) => Response.json();

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
}
