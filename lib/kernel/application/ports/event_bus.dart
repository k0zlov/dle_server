import 'package:dle_server/kernel/domain/events/events.dart';

typedef EventHandler<T extends Event> = void Function(T event);

abstract interface class EventBus<T extends Event> {
  void publish(T event);

  void subscribe(EventHandler<T> handler, {required Type eventType});
}

typedef DomainEventBus = EventBus<DomainEvent>;

typedef IntegrationEventBus = EventBus<IntegrationEvent>;
