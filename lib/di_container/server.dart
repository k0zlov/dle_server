part of 'register_dependencies.dart';

AppServer _server() {
  return AppServer(
    config: (
      port: int.tryParse(Platform.environment['PORT'] ?? '') ?? 8080,
      ip: InternetAddress.anyIPv4,
    ),
    middlewares: [
      AppMiddleware.corsHeaders,
      AppMiddleware.headers,
      AppMiddleware.logging,
      AppMiddleware.error,
    ],
    middlewareMapping: getIt(),
    routes: [
      AppRoute(name: 'auth', controllers: [AuthRestController()]),
    ],
  );
}
