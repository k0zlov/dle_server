import 'dart:async';

import 'package:dle_server/shared_kernel/adapters/middlewares/app_middleware.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/http_method.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/request_context.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/request_validation.dart';
import 'package:shelf/shelf.dart';

typedef AppHandler = FutureOr<Response> Function(RequestContext context);

abstract class ApiHandler {
  ApiHandler({
    required this.method,
    required this.name,
    required AppHandler handler,
    this.middlewares = const [],
    this.bodySchema = const {},
    this.querySchema = const {},
  })  : assert(
          name.isNotEmpty,
          'Endpoint name cannot be empty',
        ),
        _handler = handler;

  final String name;
  final List<AppMiddleware> middlewares;
  final AppHandler _handler;
  final HttpMethod method;

  final Set<Parameter<Object>> bodySchema;
  final Set<Parameter<Object>> querySchema;

  Handler call() {
    return (Request request) async {
      final context = RequestContext(request, name);
      await validateRequest(
        context: context,
        body: bodySchema,
        query: querySchema,
      );
      return await _handler(context);
    };
  }
}
