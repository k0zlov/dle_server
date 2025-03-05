import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/api_handler.dart';

final class AppEndpoint extends ApiHandler {
  AppEndpoint({
    required super.method,
    required super.name,
    required super.handler,
    super.bodySchema,
    super.querySchema,
  });
}
