import 'package:dle_server/di_container/register_dependencies.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/app_server.dart';

void main(List<String> args) async {
  final AppServer server = await registerDependencies();

  await server.start(args);
}
