import 'package:dle_server/kernel/domain/events/events.dart';

typedef EventHandler<T extends Event> = void Function(T event);

abstract interface class EventBus<T extends Event> {
  void publish<B extends T>(B event);

  void subscribe<B extends T>(EventHandler<B> handler);
}

typedef DomainEventBus = EventBus<DomainEvent>;

typedef IntegrationEventBus = EventBus<IntegrationEvent>;
