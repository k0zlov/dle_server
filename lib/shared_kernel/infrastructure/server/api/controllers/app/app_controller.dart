
import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/api_handler.dart';

abstract interface class AppController {
  Set<ApiHandler> get handlers;
}
