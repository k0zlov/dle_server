enum SocketEventAction { delete, update }

class SocketMessage<T> {
  const SocketMessage({
    required this.event,
    required this.action,
    required this.data,
  });

  final String event;
  final SocketEventAction action;
  final List<T> data;

  Map<String, dynamic> toJson() {
    return {'event': event, 'action': action, 'data': data};
  }
}
