import 'dart:async';
import 'dart:convert';

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

  /// Adds a WebSocketChannel for a particular [userId].
  /// Supports multiple channels for a single user.
  ///
  /// Automatically sets default behavior for `onError` and `onDone`.
  /// If `onData` is provided, it processes incoming events for this channel.
  void addChannel(
    String userId,
    WebSocketChannel channel, {
    void Function(dynamic data)? onData,
  }) {
    // Add to the existing list or create a new one
    if (!userChannels.containsKey(userId)) {
      userChannels[userId] = [];
    }

    userChannels[userId]!.add(channel);

    // Handle cleanup on error or stream completion
    channel.stream.listen(
      (event) {
        // Call the provided `onData` function for message handling
        if (onData != null) {
          onData(event);
        }
      },
      onError: (error) {
        // Remove the specific channel on error
        removeChannel(userId, channel);
      },
      onDone: () {
        // Cleanup on disconnection
        removeChannel(userId, channel);
      },
      cancelOnError: true,
    );
  }

  /// Removes a specific WebSocketChannel for a particular [userId].
  /// Closes the channel and removes it from the user's list of channels.
  void removeChannel(String userId, WebSocketChannel channel) {
    if (userChannels.containsKey(userId)) {
      userChannels[userId]?.remove(channel); // Remove the specific channel
      channel.sink.close(); // Close the WebSocket connection

      // If no more channels are left for this user, remove the user entry from the map
      if (userChannels[userId]?.isEmpty ?? true) {
        userChannels.remove(userId);
      }
    }
  }

  /// Removes all WebSocket channels for a particular [userId].
  /// Closes all connections and removes the user entirely.
  void removeAllChannels(String userId) {
    if (userChannels.containsKey(userId)) {
      userChannels[userId]?.forEach((channel) {
        channel.sink.close(); // Close all WebSocket connections
      });
      userChannels.remove(userId); // Remove the user from the map
    }
  }

  /// Sends a message to **all channels** for a specific [userId].
  ///
  /// If the user has multiple channels, the message is sent to all of them.
  void send({
    required String userId,
    required dynamic data,
    required String id,
  }) {
    if (userChannels.containsKey(userId)) {
      final encodedData = jsonEncode({'id': id, 'data': data});
      for (final channel in userChannels[userId]!) {
        channel.sink.add(encodedData);
      }
    }
  }

  /// Broadcasts a message to **all users across all channels**.
  ///
  /// Sends the message to every active WebSocketChannel across all users.
  void broadcastMessage(dynamic data) {
    final encodedData = jsonEncode(data);
    userChannels.forEach((userId, channels) {
      for (final channel in channels) {
        channel.sink.add(encodedData);
      }
    });
  }

  /// Closes all WebSocket channels for all users and clears the manager.
  void closeAllChannels() {
    userChannels
      ..forEach((userId, channels) {
        for (final channel in channels) {
          channel.sink.close();
        }
      })
      ..clear();
  }

  /// Returns the count of all active WebSocket channels (across all users).
  int get totalActiveConnections =>
      userChannels.values.fold(0, (count, list) => count + list.length);

  /// Returns the count of active channels for a specific [userId].
  int activeConnectionsFor(String userId) {
    return userChannels[userId]?.length ?? 0;
  }

  /// Checks if the given [userId] has any active WebSocket channels.
  bool hasChannels(String userId) {
    return userChannels[userId]?.isNotEmpty ?? false;
  }
}
