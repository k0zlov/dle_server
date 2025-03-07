import 'dart:io';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dle_server/bounded_contexts/auth/di_container.dart';
import 'package:dle_server/shared_kernel/adapters/primary/middlewares/app_middleware.dart';
import 'package:dle_server/shared_kernel/adapters/primary/middlewares/error_middleware.dart';
import 'package:dle_server/shared_kernel/adapters/primary/middlewares/headers_middleware.dart';
import 'package:dle_server/shared_kernel/adapters/secondary/event_bus/in_memory_event_bus.dart';
import 'package:dle_server/shared_kernel/application/ports/event_bus.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/database.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/index.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';
import 'package:dle_server/shared_kernel/infrastructure/extensions/dot_env_extension.dart';
import 'package:dle_server/shared_kernel/infrastructure/services/token/jwt_client.dart';
import 'package:dle_server/shared_kernel/infrastructure/services/token/token_service.dart';
import 'package:get_it/get_it.dart';
import 'package:postgres/postgres.dart';
import 'package:shelf/shelf.dart';
import 'package:shelfster/shelfster.dart';

part 'contexts.dart';

part 'database.dart';

part 'integration_events.dart';

part 'server.dart';

part 'services.dart';

/// GetIt instance
final getIt = GetIt.instance;

/// Environmental variables
Future<AppServer> registerDependencies() async {
  getIt.enableRegisteringMultipleInstancesOfOneType();
  await database();

  _eventBus();
  _services();

  await _contexts();
  _integrationEventListeners();
  _middlewares();

  return _server();
}
