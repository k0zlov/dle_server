import 'package:logger/logger.dart';
import 'package:users_api/shared_kernel/infrastructure/logger/filters.dart';

class AppLogger extends Logger {
  AppLogger() : super(filter: TestModeFilter());
}

class TestLogger extends Logger {}
