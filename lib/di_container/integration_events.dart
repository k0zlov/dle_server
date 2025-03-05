part of 'register_dependencies.dart';

void _eventBus() {
  getIt.registerLazySingleton<IntegrationEventBus>(
    InMemoryEventBus.new,
  );
}

void _integrationEventListeners() {
  if (!getIt.isRegistered<IntegrationEventListener>()) return;

  for (final IntegrationEventListener listener in getIt.getAll()) {
    getIt<IntegrationEventBus>().subscribe(
      listener.call,
      eventType: listener.eventType,
    );
  }
}
