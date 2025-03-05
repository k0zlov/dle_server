part of 'register_dependencies.dart';

void _middlewares() {
  final headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  getIt
    ..registerLazySingleton<Map<AppMiddleware, Middleware>>(
      () => {
        AppMiddleware.logging: logRequests(),
        AppMiddleware.corsHeaders: corsHeaders(),
        AppMiddleware.error: errorMiddleware(),
        AppMiddleware.headers: getIt(instanceName: AppMiddleware.headers.name),
      },
    )
    ..registerLazySingleton<Middleware>(
      instanceName: AppMiddleware.headers.name,
      () => headersMiddleware(headers),
    );
}

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
    routes: getIt.getAll<AppRoute>().toList(),
  );
}
