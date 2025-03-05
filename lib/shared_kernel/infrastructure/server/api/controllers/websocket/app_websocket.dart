import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/route/http_method.dart';

class AppWebsocket extends ApiHandler {
  AppWebsocket({
    required super.name,
    required super.handler,
    super.querySchema,
  }) : super(method: HttpMethod.GET);
}
