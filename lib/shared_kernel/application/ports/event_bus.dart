import 'package:dle_server/shared_kernel/domain/events/events.dart';

typedef EventHandler<T extends Event> = void Function(T event);

abstract interface class EventBus {
  void publish<T extends Event>(T event);

  void subscribe<T extends Event>(
    EventHandler<T> handler, {
    required Type eventType,
  });
}
