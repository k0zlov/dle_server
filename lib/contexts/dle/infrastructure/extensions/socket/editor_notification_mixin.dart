import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/socket_message.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';

mixin EditorNotificationMixin {
  late final WebSocketManager wsManager;

  void sendUpdateToAllEditors({
    required String eventName,
    required bool isDeletion,
    required List<DleEditor> editors,
    required Map<String, dynamic> data,
  }) {
    for (final editor in editors) {
      wsManager.send(
        userId: editor.userId,
        message: SocketMessage(
          event: eventName,
          action:
              isDeletion ? SocketEventAction.delete : SocketEventAction.update,
          data: data,
        ),
      );
    }
  }
}
