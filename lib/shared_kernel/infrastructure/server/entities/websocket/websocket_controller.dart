import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/api_handler.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/app_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/websocket/app_websocket.dart';

abstract class WebSocketController implements AppController {
  Set<AppWebsocket> get webSockets;

  Set<ApiHandler> get handlers => webSockets;
}
