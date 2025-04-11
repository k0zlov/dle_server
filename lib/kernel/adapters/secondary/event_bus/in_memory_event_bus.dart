import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/domain/events/events.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';

class InMemoryEventBus<T extends Event> implements EventBus<T> {
  InMemoryEventBus({List<EventListener> listeners = const []}) {
    for (final EventListener listener in listeners) {
      subscribe(listener.call, eventType: listener.eventType);
    }
  }

  final Map<Type, List<Function>> _handlersMap = {};

  @override
  void publish(T event) {
    final handlers = _handlersMap[event.runtimeType];
    if (handlers == null) return;

    for (final handler in handlers) {
      (handler as EventHandler<T>)(event);
    }
  }

  @override
  void subscribe(EventHandler<T> handler, {required Type eventType}) {
    if (eventType == Event ||
        eventType == DomainEvent ||
        eventType == IntegrationEvent) {
      throw Exception(
        'Subscribing to abstract event types (Event, DomainEvent, IntegrationEvent) is not allowed.',
      );
    }

    _handlersMap[eventType] = (_handlersMap[eventType] ?? [])..add(handler);
  }
}
