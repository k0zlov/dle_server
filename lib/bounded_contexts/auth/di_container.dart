import 'package:dle_server/bounded_contexts/auth/adapters/primary/api/controllers/auth_rest_controller.dart';
import 'package:dle_server/bounded_contexts/auth/adapters/primary/api/routes/auth_route.dart';
import 'package:dle_server/bounded_contexts/auth/adapters/secondary/persistence/users_repository_drift.dart';
import 'package:dle_server/bounded_contexts/auth/application/event_listeners/domain/user_registered_listener.dart';
import 'package:dle_server/bounded_contexts/auth/application/event_listeners/integration/user_registered_listener.dart';
import 'package:dle_server/bounded_contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/bounded_contexts/auth/application/use_cases/register_use_case/register_use_case.dart';
import 'package:dle_server/di_container/register_dependencies.dart';
import 'package:dle_server/shared_kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/shared_kernel/application/ports/event_bus.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/route/app_route.dart';
import 'package:uuid/v4.dart';

final String _contextId = const UuidV4().generate();

Future<void> registerAuthDependencies() async {
  _repositories();
  _services();
  _eventBus();
  _useCases();
  _listeners();
  _controllers();
  _routes();
}

void _repositories() {
  getIt.registerLazySingleton<UsersRepositoryPort>(
    () => UsersRepositoryDrift(database: getIt()),
  );
}

void _services() {}

void _eventBus() {
  getIt.registerLazySingleton<DomainEventBus>(
    instanceName: _contextId,
    InMemoryEventBus.new,
  );
}

void _useCases() {
  final DomainEventBus domainEventBus = getIt(instanceName: _contextId);

  getIt.registerLazySingleton(
    () => RegisterUseCase(
      domainEventBus: domainEventBus,
      usersRepository: getIt(),
      tokenService: getIt(),
      integrationEventBus: getIt(),
    ),
  );
}

void _listeners() {
  final List<DomainEventListener> domainListeners = [
    UserRegisteredListener(),
  ];

  final DomainEventBus domainEventBus = getIt(instanceName: _contextId);

  for (final DomainEventListener listener in domainListeners) {
    domainEventBus.subscribe(listener.call, eventType: listener.eventType);
  }

  final List<IntegrationEventListener> integrationListeners = [
    UserRegisteredIntegrationListener(),
  ];

  for (final IntegrationEventListener listener in integrationListeners) {
    getIt.registerLazySingleton<IntegrationEventListener>(() => listener);
  }
}

void _controllers() {
  getIt.registerLazySingleton(
    () => AuthRestController(registerUseCase: getIt()),
  );
}

void _routes() {
  getIt.registerLazySingleton<AppRoute>(
    () => AuthRoute(restController: getIt()),
  );
}
