import 'package:dle_server/kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';
import 'package:injectable/injectable.dart';

const dleContext = Named('dleContext');
const dleManage = Named('dleContext');

@module
abstract class DleDependencyContainer {
  @dleContext
  @lazySingleton
  DomainEventBus domainEventBus() {
    return InMemoryEventBus();
  }

  @dleContext
  List<IntegrationEventListener> integrationListeners() {
    return [];
  }
}
