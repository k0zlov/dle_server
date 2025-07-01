enum SocketEventAction { delete, update }

class SocketMessage {
  const SocketMessage({
    required this.event,
    required this.action,
    required this.data,
  });

  final String event;
  final SocketEventAction action;
  final dynamic data;

  Map<String, dynamic> toJson() {
    return {'event': event, 'action': action.name, 'data': data};
  }
}
