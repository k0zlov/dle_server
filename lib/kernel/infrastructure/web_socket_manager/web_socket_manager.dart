import 'dart:async';
import 'dart:convert';

import 'package:ruta/ruta.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Manages multiple WebSocket channels for users. This includes adding, removing, sending data,
/// broadcasting messages, and ensuring connections close when errors or disconnections occur.
///
/// Features:
/// - Tracks WebSocket channels for each user (`userId`).
/// - Automatically removes channels when connections close or experience errors.
/// - Supports adding user-specific logic for handling messages via the `onMessage` parameter.
mixin WebSocketManager {
  /// The map storing WebSocket channels, accessible publicly.
  final Map<String, WebSocketChannel> channels = {};

  FutureOr<Response> wsHandler(
    Request req, {
    required void Function(WebSocketChannel, String?) onConnection,
  }) {
    return webSocketHandler(onConnection)(req);
  }

  /// Adds a new WebSocketChannel for a particular user and sets up default behavior for `onError` and `onDone`.
  ///
  /// If the channel already exists, it checks whether the existing one is closed:
  /// - If **closed**, replaces the existing channel with the provided one.
  /// - If **active**, skips replacing the channel.
  ///
  /// [userId] - The identifier of the user for whom the channel is being added.
  /// [channel] - The WebSocketChannel instance to be added.
  /// [onData] - (Optional) A custom handler for incoming messages on the channel.
  void addChannel(
    String userId,
    WebSocketChannel channel, {
    void Function(dynamic data)? onData,
  }) {
    if (channels.containsKey(userId)) {
      // If the channel already exists, check if it is closed
      final existingChannel = channels[userId];
      if (existingChannel == null || existingChannel.closeCode != null) {
        // Current channel is closed; override it with the new one
        channels[userId] = channel;
      }
    } else {
      // Add the channel if it does not exist
      channels[userId] = channel;
    }

    // Automatically handle cleanup for onError and onDone
    channel.stream.listen(
      (event) {
        // Delegate message handling to the provided `onData` callback, if any
        if (onData != null) {
          onData(event);
        }
      },
      onError: (error) {
        // Remove the channel when an error occurs
        removeChannel(userId);
      },
      onDone: () {
        // Remove the channel when the connection is closed
        removeChannel(userId);
      },
      cancelOnError: true,
    );
  }

  /// Removes a WebSocketChannel for a particular user.
  ///
  /// This closes the WebSocket connection and removes it from the manager.
  void removeChannel(String userId) {
    if (channels.containsKey(userId)) {
      channels[userId]?.sink.close(); // Close the connection
      channels.remove(userId); // Remove the channel from the map
    }
  }

  /// Sends a message to a specific user's WebSocket channel.
  ///
  /// [userId] - The identifier of the user to whom the message should be sent.
  /// [data] - The message to be sent.
  void send({required String userId, required dynamic data}) {
    if (channels.containsKey(userId)) {
      channels[userId]!.sink.add(jsonEncode(data));
    }
  }

  /// Broadcasts a message to all connected WebSocket channels.
  ///
  /// [data] - The message to be sent to all active channels.
  void broadcastMessage(dynamic data) {
    channels.forEach((userId, channel) {
      channel.sink.add(jsonEncode(data));
    });
  }

  /// Closes all WebSocket channels and clears the manager.
  void closeAllChannels() {
    channels
      ..forEach((userId, channel) {
        channel.sink.close();
      })
      ..clear();
  }

  /// Gets the current number of active WebSocket channels.
  ///
  /// Returns the count of active channels.
  int get activeConnectionCount => channels.length;

  /// Checks if a WebSocketChannel exists for a specific user.
  ///
  /// [userId] - The identifier of the user.
  ///
  /// Returns `true` if a channel exists for the given user, otherwise `false`.
  bool hasChannel(String userId) {
    return channels.containsKey(userId);
  }
}
