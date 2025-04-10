import 'package:dle_server/kernel/infrastructure/extensions/dot_env_extension.dart';
import 'package:logger/logger.dart';

class TestModeFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return isTestLogs();
  }
}

class SilentFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return false;
  }
}
