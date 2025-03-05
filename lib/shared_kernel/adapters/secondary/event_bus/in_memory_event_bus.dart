import 'package:dle_server/shared_kernel/application/ports/event_bus.dart';
import 'package:dle_server/shared_kernel/domain/events/events.dart';

class InMemoryEventBus implements EventBus {
  final Map<Type, List<Function>> _handlersMap = {};

  @override
  void publish<T extends Event>(T event) {
    final handlers = _handlersMap[event.runtimeType];
    if (handlers == null) return;

    for (final handler in handlers) {
      (handler as EventHandler<T>)(event);
    }
  }

  @override
  void subscribe<T extends Event>(
    EventHandler<T> handler, {
    required Type eventType,
  }) {
    if (T != eventType) {
      throw Exception(
        'The generic type parameter does not match the provided eventType.',
      );
    }

    if (T == Event || T == DomainEvent || T == IntegrationEvent) {
      throw Exception(
        'Subscribing to abstract event types (Event, DomainEvent, IntegrationEvent) is not allowed.',
      );
    }

    _handlersMap[eventType] = (_handlersMap[eventType] ?? [])..add(handler);
  }
}
