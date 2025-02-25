
import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/api_handler.dart';

abstract interface class AppController {
  Set<ApiHandler> get handlers;
}
