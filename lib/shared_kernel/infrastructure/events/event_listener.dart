import 'dart:async';

import 'package:dle_server/shared_kernel/domain/events/events.dart';

sealed class EventListener<T extends Event> {
  FutureOr<void> call(T event);

  Type get eventType => T;
}

abstract interface class DomainEventListener<T extends DomainEvent>
    implements EventListener<T> {}

abstract interface class IntegrationEventListener<T extends IntegrationEvent>
    implements EventListener<T> {}
