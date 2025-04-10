import 'package:dle_server/di/register_dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// GetIt instance
final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> registerDependencies() async {
  getIt.init();
}
