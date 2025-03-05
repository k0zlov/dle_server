import 'package:dle_server/di_container/register_dependencies.dart';
import 'package:dle_server/shared_kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/shared_kernel/application/ports/event_bus.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';
import 'package:uuid/v4.dart';

final String _contextId = const UuidV4().generate();

Future<void> _registerExampleDependencies() async {
  _repositories();
  _services();
  _eventBus();
  _useCases();
  _listeners();
  _controllers();
  _routes();
}

void _repositories() {}

void _services() {}

void _eventBus() {
  getIt.registerLazySingleton<DomainEventBus>(
    instanceName: _contextId,
    InMemoryEventBus.new,
  );
}

void _useCases() {
  final DomainEventBus domainEventBus = getIt(instanceName: _contextId);
}

void _listeners() {
  final List<DomainEventListener> domainListeners = [];

  final DomainEventBus domainEventBus = getIt(instanceName: _contextId);

  for (final DomainEventListener listener in domainListeners) {
    domainEventBus.subscribe(listener.call, eventType: listener.eventType);
  }

  final List<IntegrationEventListener> integrationListeners = [];

  for (final IntegrationEventListener listener in integrationListeners) {
    getIt.registerLazySingleton<IntegrationEventListener>(() => listener);
  }
}

void _controllers() {}

void _routes() {}
