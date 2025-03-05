sealed class Event {
  Event() : occurredOn = DateTime.now();

  final DateTime occurredOn;
}

abstract class DomainEvent extends Event {}

abstract class IntegrationEvent extends Event {}
