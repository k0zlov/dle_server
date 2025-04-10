import 'dart:async';

import 'package:dle_server/kernel/domain/events/events.dart';

sealed class EventListener<T extends Event> {
  EventListener() : eventType = T;

  final Type eventType;

  FutureOr<void> call(T event);
}

abstract class DomainEventListener<T extends DomainEvent>
    extends EventListener<T> {}

abstract class IntegrationEventListener<T extends IntegrationEvent>
    extends EventListener<T> {}
