import 'package:dle_server/di_container/register_dependencies.dart';
import 'package:shelfster/shelfster.dart';

void main(List<String> args) async {
  final AppServer server = await registerDependencies();

  await server.start(args);
}
