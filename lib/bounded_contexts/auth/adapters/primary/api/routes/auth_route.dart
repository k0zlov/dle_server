import 'package:dle_server/bounded_contexts/auth/adapters/primary/api/controllers/auth_rest_controller.dart';
import 'package:shelfster/shelfster.dart';

class AuthRoute extends AppRoute {
  const AuthRoute({
    required this.restController,
  });

  final AuthRestController restController;

  @override
  Set<AppController> get controllers => {restController};
}
