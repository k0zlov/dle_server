import 'dart:io';

import 'package:dle_server/shared_kernel/adapters/middlewares/app_middleware.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/app_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/route/app_route.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

typedef AppServerConfig = ({int port, Object ip});

class AppServer {
  AppServer({
    required this.config,
    required this.routes,
    this.middlewareMapping = const {},
    this.middlewares = const [],
  });

  final List<AppMiddleware> middlewares;
  final Map<AppMiddleware, Middleware> middlewareMapping;
  final AppServerConfig config;
  final List<AppRoute> routes;

  HttpServer? _server;

  final Router _router = Router();

  void _buildRoutes() {
    for (final AppRoute route in routes) {
      final localRouter = Router();

      for (final AppController controller in route.controllers) {
        for (final ApiHandler handler in controller.handlers) {
          final pipeline = handler.middlewares.fold(
            const Pipeline(),
            (Pipeline acc, AppMiddleware middleware) {
              final mw = middlewareMapping[middleware];
              if (mw == null) {
                throw Exception(
                  'Middleware ${middleware.name} was not found in mapping',
                );
              }
              return acc.addMiddleware(mw);
            },
          );

          localRouter.add(
            handler.method.name,
            '/${handler.name}',
            pipeline.addHandler(handler()),
          );
        }
      }

      _router.mount('/${route.name}', localRouter.call);
    }
  }

  Future<void> start(List<String> args) async {
    final bool printMessage = args
        .firstWhere(
          (arg) => arg.startsWith('--print-message='),
      orElse: () => '--print-message=false',
    )
        .split('=')
        .last ==
        'true';

    if (_server != null) throw Exception('Server has already started');
    final pipeline = middlewares.fold(
      const Pipeline(),
      (Pipeline acc, AppMiddleware middleware) {
        final mw = middlewareMapping[middleware];
        if (mw == null) {
          throw Exception(
            'Middleware ${middleware.name} was not found in mapping',
          );
        }
        return acc.addMiddleware(mw);
      },
    );

    _buildRoutes();

    _server = await serve(
      pipeline.addHandler(_router.call),
      config.ip,
      config.port,
    );

    _server!.autoCompress = true;
    if (printMessage) {
      print('Server listening on ${_server!.address.host}:${_server!.port}');
    }
  }

  Future<void> stop() async {
    await _server?.close();
    _server = null;
  }
}
