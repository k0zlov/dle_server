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
  void publish<B extends T>(B event) {
    final handlers = _handlersMap[B];
    if (handlers == null) return;

    for (final handler in handlers) {
      (handler as EventHandler<B>)(event);
    }
  }

  @override
  void subscribe<B extends T>(EventHandler<B> handler, {Type? eventType}) {
    final Type type = eventType ?? B;

    if (type == Event || type == DomainEvent || type == IntegrationEvent) {
      throw Exception(
        'Subscribing to abstract event types (Event, DomainEvent, IntegrationEvent) is not allowed.',
      );
    }

    _handlersMap[type] = (_handlersMap[type] ?? [])..add(handler);
  }
}
