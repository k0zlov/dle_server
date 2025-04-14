import 'dart:async';

import 'package:dle_server/kernel/adapters/primary/api/controllers/uploads_rest_controller.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

FutureOr<Response> handler(Request req) async => Response.json();

@rutaRoute
class UploadsRoute extends Route {
  UploadsRoute({required this.controller});

  final UploadsRestController controller;

  Endpoint get images {
    return Endpoint.get(
      path: '/images',
      query: [
        Field<String>('uploadId'),
        Field<int>('width'),
        Field<int>('height'),
      ],
      handler: controller.getImage,
    );
  }
}
