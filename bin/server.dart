import 'package:dle_server/shared_kernel/infrastructure/server/run_server.dart';

Future<void> main() async {
  await runServer(serverPath: 'lib/main.dart');
}
