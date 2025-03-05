import 'package:dle_server/bounded_contexts/auth/adapters/primary/api/controllers/auth_rest_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/app_controller.dart';
import 'package:dle_server/shared_kernel/infrastructure/server/api/route/app_route.dart';

class AuthRoute extends AppRoute {
  const AuthRoute({
    required this.restController,
  });

  final AuthRestController restController;

  @override
  Set<AppController> get controllers => {restController};
}
