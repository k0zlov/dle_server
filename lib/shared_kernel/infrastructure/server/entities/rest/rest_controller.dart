import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/app_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/rest/app_endpoint.dart';

abstract class RestController implements AppController {
  Set<AppEndpoint> get endpoints;

  @override
  Set<ApiHandler> get handlers => endpoints;
}
