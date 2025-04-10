import 'package:dle_server/kernel/infrastructure/logger/filters.dart';
import 'package:logger/logger.dart';

class AppLogger extends Logger {
  AppLogger() : super(filter: TestModeFilter());
}

class TestLogger extends Logger {}
