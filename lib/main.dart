import 'dart:io';

import 'package:dle_server/di/register_dependencies.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/error_middleware.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:ruta/ruta.dart';

Future<void> init() async {}

Future<HttpServer> run(
  Future<Handler> Function() handlerCallback,
  InternetAddress address,
  int port,
) async {
  await registerDependencies();

  final Handler handler = (await handlerCallback())
      .use(ErrorMiddleware())
      .use(LogRequestsMiddleware(logger: (message, isError) => print(message)));

  await getIt.getOrAsync<Database>();

  return serve(handler, address, port);
}
