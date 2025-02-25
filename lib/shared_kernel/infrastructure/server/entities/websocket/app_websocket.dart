import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/request/http_method.dart';

class AppWebsocket extends ApiHandler {
  AppWebsocket({
    required super.name,
    required super.handler,
    super.querySchema,
  }) : super(method: HttpMethod.GET);
}
