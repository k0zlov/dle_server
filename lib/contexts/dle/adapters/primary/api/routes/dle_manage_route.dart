import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/characters_rest_controller.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/dle_manage_rest_controller.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/dle_manage_socket_controller.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/hints_rest_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:dle_server/kernel/infrastructure/validators/validators.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

@rutaRoute
class DleManageRoute extends Route {
  DleManageRoute({
    required this.controller,
    required this.authMiddleware,
    required this.socketController,
    required this.charactersController,
    required this.hintsController,
  });

  final DleManageRestController controller;
  final AuthMiddleware authMiddleware;
  final DleManageSocketController socketController;
  final CharactersRestController charactersController;
  final HintsRestController hintsController;

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

  Endpoint get kickEditor {
    return Endpoint.delete(
      path: '<id>/editors/<editorId>/kick',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.kickEditor,
    );
  }

  Endpoint get editEditor {
    return Endpoint.put(
      path: '<id>/editors/<editorId>/edit',
      authRequired: true,
      middlewares: [authMiddleware],
      body: [Field<String>('role')],
      handler: controller.editEditor,
    );
  }

  Endpoint get leaveDle {
    return Endpoint.delete(
      path: '<id>/editors/leave',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.leaveDle,
    );
  }

  Endpoint get listenDleUpdates {
    return Endpoint.get(
      path: 'listen',
      authRequired: true,
      middlewares: [authMiddleware],
      query: [Field<String>('token')],
      handler: socketController.listenDleUpdates,
    );
  }

  Endpoint get createCharacter {
    return Endpoint.post(
      path: '<id>/characters',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: charactersController.create,
    );
  }

  Endpoint get editCharacter {
    return Endpoint.put(
      path: '<id>/characters/<characterId>',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: charactersController.edit,
    );
  }

  Endpoint get removeCharacter {
    return Endpoint.delete(
      path: '<id>/characters/<characterId>',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: charactersController.remove,
    );
  }

  Endpoint get createHint {
    return Endpoint.post(
      path: '<id>/hints',
      authRequired: true,
      middlewares: [authMiddleware],
      body: [
        Field<String>('title'),
        Field<String>('type'),
        Field<int>('requiredTries', validators: [Validators.range(0, 100)]),
        Field<String>('description', isRequired: false),
        Field<bool>('isHidden', isRequired: false),
      ],
      handler: hintsController.create,
    );
  }

  Endpoint get editHint {
    return Endpoint.put(
      path: '<id>/hints/<hintId>',
      authRequired: true,
      middlewares: [authMiddleware],
      body: [
        Field<String>('title', isRequired: false),
        Field<String>('type', isRequired: false),
        Field<int>(
          'requiredTries',
          validators: [Validators.range(0, 100)],
          isRequired: false,
        ),
        Field<String>('description', isRequired: false),
        Field<bool>('isHidden', isRequired: false),
      ],
      handler: hintsController.edit,
    );
  }

  Endpoint get removeHint {
    return Endpoint.delete(
      path: '<id>/hints/<hintId>',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: hintsController.remove,
    );
  }
}
