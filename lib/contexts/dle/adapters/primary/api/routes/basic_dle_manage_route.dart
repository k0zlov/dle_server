import 'package:dle_server/contexts/dle/adapters/primary/api/controllers/basic_dle_manage_controller.dart';
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
    required this.basicDleController,
  });

  final AuthMiddleware authMiddleware;
  final ParametersRestController parametersController;
  final BasicDleManageRestController basicDleController;

  @override
  String get name => 'dle/basic/manage';

  @override
  List<Middleware> get middlewares => [authMiddleware];

  Endpoint get get {
    return Endpoint.get(
      path: '<id>',
      authRequired: true,
      handler: basicDleController.get,
    );
  }

  Endpoint get createParameter {
    return Endpoint.post(
      path: '<id>/parameters',
      authRequired: true,
      body: [
        Field<String>('title'),
        Field<String>('type'),
        Field<String>('description', isRequired: false),
        Field<String>('compareMode', isRequired: false),
        Field<bool>('isReverseCompared', isRequired: false),
        Field<bool>('allowsMultipleValues', isRequired: false),
        Field<bool>('isSelectable', isRequired: false),
        Field<bool>('isHidden', isRequired: false),
      ],
      handler: parametersController.createParameter,
    );
  }

  Endpoint get updateParameter {
    return Endpoint.put(
      path: '<id>/parameters/<parameterId>',
      authRequired: true,
      body: [
        Field<String>('title', isRequired: false),
        Field<String>('description', isRequired: false),
        Field<String>('compareMode', isRequired: false),
        Field<bool>('isReverseCompared', isRequired: false),
        Field<bool>('allowsMultipleValues', isRequired: false),
        Field<bool>('isHidden', isRequired: false),
      ],
      handler: parametersController.updateParameter,
    );
  }

  Endpoint get deleteParameter {
    return Endpoint.delete(
      path: '<id>/parameters/<parameterId>',
      authRequired: true,
      handler: parametersController.removeParameter,
    );
  }

  Endpoint get createCharacterParameter {
    return Endpoint.post(
      path: '<id>/character-parameters/<characterId>',
      authRequired: true,
      handler: handler,
    );
  }

  Endpoint get updateCharacterParameter {
    return Endpoint.put(
      path: '<id>/character-parameters/<characterParameterId>',
      authRequired: true,
      handler: handler,
    );
  }

  Endpoint get deleteCharacterParameter {
    return Endpoint.delete(
      path: '<id>/character-parameters/<characterParameterId>',
      authRequired: true,
      handler: handler,
    );
  }

  Endpoint get createSelectableValue {
    return Endpoint.post(
      path: '<id>/parameters/<parameterId>/selectable-values',
      authRequired: true,
      body: [Field<String>('value'), Field<String>('title', isRequired: false)],
      handler: parametersController.createSelectableValue,
    );
  }

  Endpoint get editSelectableValue {
    return Endpoint.put(
      path: '<id>/selectable-values/<selectableId>',
      authRequired: true,
      body: [
        Field<String>('value', isRequired: false),
        Field<String>('title', isRequired: false),
      ],
      handler: parametersController.editSelectableValue,
    );
  }

  Endpoint get removeSelectableValue {
    return Endpoint.delete(
      path: '<id>/selectable-values/<selectableId>',
      authRequired: true,
      handler: parametersController.removeSelectableValue,
    );
  }
}
