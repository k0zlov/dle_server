sealed class Event {
  Event() : occurredOn = DateTime.now();

  final DateTime occurredOn;

  String get name {
    final className = runtimeType.toString();

    if (className.endsWith('Event')) {
      return className.substring(0, className.length - 'Event'.length);
    }

    return className;
  }
}

abstract class DomainEvent extends Event {}

abstract class IntegrationEvent extends Event {}
