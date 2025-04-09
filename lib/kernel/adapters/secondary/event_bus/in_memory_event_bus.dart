import 'package:users_api/shared_kernel/application/ports/event_bus.dart';
import 'package:users_api/shared_kernel/domain/events/events.dart';

class InMemoryEventBus<T extends Event> implements EventBus<T> {
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
  void subscribe(
    EventHandler<T> handler, {
    required Type eventType,
  }) {
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
