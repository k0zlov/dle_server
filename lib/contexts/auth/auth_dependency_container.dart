import 'package:dle_server/contexts/auth/application/listeners/domain/user_registered_listener.dart';
import 'package:dle_server/kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:injectable/injectable.dart';

const authContext = Named('authContext');

@module
abstract class AuthDependencyContainer {
  @authContext
  DomainEventBus domainEventBus(UserRegisteredDomainListener userRegistered) {
    return InMemoryEventBus(listeners: [userRegistered]);
  }
}
