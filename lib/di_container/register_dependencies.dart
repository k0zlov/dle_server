import 'dart:io';

import 'package:dle_server/bounded_contexts/auth/adapters/primary/rest/auth_rest_controller.dart';
import 'package:dle_server/shared_kernel/adapters/middlewares/app_middleware.dart';
import 'package:dle_server/shared_kernel/adapters/middlewares/error_middleware.dart';
import 'package:dle_server/shared_kernel/adapters/middlewares/headers_middleware.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/app_server.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/entities/route/app_route.dart';
import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

part 'middlewares.dart';

part 'server.dart';

/// GetIt instance
final getIt = GetIt.instance;

/// Environmental variables
final DotEnv env = DotEnv(includePlatformEnvironment: true)..load();

Future<AppServer> registerDependencies() async {
  _middlewares();
  return _server();
}
