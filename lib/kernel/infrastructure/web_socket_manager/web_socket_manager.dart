import 'dart:async';
import 'dart:convert';

import 'package:dle_server/kernel/adapters/primary/api/dto/socket_message.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_connection.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

FutureOr<Response> wsHandler(
  Request req, {
  required void Function(WebSocketChannel, String?) onConnection,
}) {
  return webSocketHandler(onConnection)(req);
}

/// Manages multiple WebSocket channels for users. This includes adding, removing, sending data,
/// broadcasting messages, and ensuring connections close when errors or disconnections occur.
///
/// Features:
/// - Tracks WebSocket channels for each user (`userId`).
/// - Automatically removes channels when connections close or experience errors.
/// - Supports adding user-specific logic for handling messages via the `onMessage` parameter.
@lazySingleton
class WebSocketManager {
  WebSocketManager();

  /// A map storing a list of WebSocket channels for each user.
  final Map<String, List<WebSocketChannel>> userChannels = {};

  final Map<String, List<WebSocketConnection>> userConnections = {};

  void addConnection(WebSocketConnection connection) {
    final String userId = connection.userId;

    if (!userConnections.containsKey(userId)) {
      userConnections[userId] = [];
    }

    userConnections[userId]!.add(connection);

    connection.channel.stream.listen(
      (data) {
        Set<String> events;

        try {
          final dynamic decodedData = jsonDecode(data as String);
          decodedData as List;

          events = decodedData.cast<String>().toSet();
        } catch (e) {
          connection.channel.sink.addError('Could not parse events list.');
          return;
        }
        connection.events = events;
      },
      onError: (_) {
        removeConnection(connection);
      },
      onDone: () {
        removeConnection(connection);
      },
      cancelOnError: true,
    );
  }

  void removeConnection(WebSocketConnection connection) {
    final String userId = connection.userId;

    if (!userConnections.containsKey(userId)) return;

    userConnections[userId]!.remove(connection);
    connection.close();

    if (userConnections[userId]?.isEmpty ?? true) {
      userConnections.remove(userId);
    }
  }

  void removeAllConnections(String userId) {
    if (!userConnections.containsKey(userId)) return;

    userConnections[userId]?.forEach((connection) {
      connection.channel.sink.close(); // Close all WebSocket connections
    });

    userConnections.remove(userId); // Remove the user from the map
  }

  void send({required String userId, required SocketMessage message}) {
    if (userConnections[userId]?.isEmpty ?? true) return;

    final String event = message.event;

    for (final connection in userConnections[userId]!) {
      if (!connection.events.contains(event)) continue;

      final dynamic data = jsonEncode(message.toJson());
      connection.channel.sink.add(data);
    }
  }

  /// Returns the count of all active WebSocket channels (across all users).
  int get totalActiveConnections =>
      userConnections.values.fold(0, (count, list) => count + list.length);

  /// Returns the count of active connections for a specific [userId].
  int activeConnectionsFor(String userId) {
    return userConnections[userId]?.length ?? 0;
  }

  /// Checks if the given [userId] has any active WebSocket channels.
  bool hasConnections(String userId) {
    return userConnections[userId]?.isNotEmpty ?? false;
  }
}
