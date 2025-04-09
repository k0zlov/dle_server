import 'package:logger/logger.dart';
import 'package:users_api/shared_kernel/infrastructure/extensions/dot_env_extension.dart';

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
