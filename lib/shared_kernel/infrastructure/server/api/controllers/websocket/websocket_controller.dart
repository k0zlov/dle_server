import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/app_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/websocket/app_websocket.dart';

abstract class WebSocketController implements AppController {
  Set<AppWebsocket> get webSockets;

  Set<ApiHandler> get handlers => webSockets;
}
