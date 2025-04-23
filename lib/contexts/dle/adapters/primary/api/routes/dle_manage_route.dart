import 'dart:async';

import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/dle_manage_rest_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:dle_server/kernel/infrastructure/validators/validators.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

FutureOr<Response> handler(Request req) {
  print(req.url.pathSegments);
  return Response.json();
}

@rutaRoute
class DleManageRoute extends Route {
  DleManageRoute({required this.controller, required this.authMiddleware});

  final DleManageRestController controller;
  final AuthMiddleware authMiddleware;

  @override
  String get name => 'dle/manage';

  Endpoint get getMyDle {
    return Endpoint.get(
      path: 'my',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.getUserDle,
    );
  }

  Endpoint get create {
    return Endpoint.post(
      path: 'create',
      authRequired: true,
      middlewares: [authMiddleware],
      body: [
        Field<String>('title'),
        Field<String>('type'),
        Field<String>('description', isRequired: false),
      ],
      handler: controller.create,
    );
  }

  Endpoint get edit {
    return Endpoint.put(
      path: '<id>/edit',
      authRequired: true,
      middlewares: [authMiddleware],
      body: [
        Field<String>(
          'title',
          isRequired: false,
          validators: [Validators.lengthRange(3, 20)],
        ),
        Field<String>(
          'description',
          isRequired: false,
          validators: [Validators.maxLength(150)],
        ),
        Field<bool>('isPrivate', isRequired: false),
      ],
      handler: controller.editDle,
    );
  }

  Endpoint get editAsset {
    return Endpoint.put(
      path: '<id>/edit-asset',
      authRequired: true,
      query: [Field<String>('type')],
      middlewares: [authMiddleware],
      handler: controller.editAsset,
    );
  }

  Endpoint get inviteEditor {
    return Endpoint.post(
      path: '<id>/editors/invite',
      authRequired: true,
      middlewares: [authMiddleware],
      body: [Field<String>('userId')],
      handler: controller.inviteEditor,
    );
  }

  Endpoint get acceptInvitation {
    return Endpoint.post(
      path: 'invitations/<id>/accept',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.acceptInvitation,
    );
  }
}
