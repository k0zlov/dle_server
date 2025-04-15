import 'package:dle_server/contexts/profiles/application/listeners/integration/user_registered_listener.dart';
import 'package:dle_server/kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';
import 'package:injectable/injectable.dart';

const profilesContext = Named('profilesContext');

@module
abstract class ProfilesDependencyContainer {
  @profilesContext
  DomainEventBus domainEventBus() {
    return InMemoryEventBus();
  }

  @profilesContext
  List<IntegrationEventListener> integrationListeners(
    UserRegisteredProfileListener userRegisteredProfileListener,
  ) {
    return [userRegisteredProfileListener];
  }
}
