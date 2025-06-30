import 'package:uuid/v4.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketConnection {
  WebSocketConnection({
    required this.userId,
    required this.channel,
    required this.events,
  }) : id = const UuidV4().generate();

  final String id;
  final String userId;
  final WebSocketChannel channel;
  Set<String> events;

  Future<dynamic> close() {
    return channel.sink.close();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebSocketConnection &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
