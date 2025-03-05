import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/app_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/rest/app_endpoint.dart';

abstract class RestController implements AppController {
  Set<AppEndpoint> get endpoints;

  @override
  Set<ApiHandler> get handlers => endpoints;
}
