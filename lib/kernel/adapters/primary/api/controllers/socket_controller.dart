import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_connection.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class SocketController {
  SocketController({required this.wsManager});

  final WebSocketManager wsManager;

  Future<Response> listenUpdates(Request req) async {
    return wsHandler(
      req,
      onConnection: (channel, _) async {
        final String userId = req.payload.userId;

        wsManager.addConnection(
          WebSocketConnection(userId: userId, channel: channel, events: {}),
        );
      },
    );
  }
}
