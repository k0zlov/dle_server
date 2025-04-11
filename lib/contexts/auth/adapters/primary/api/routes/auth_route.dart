import 'package:dle_server/contexts/auth/adapters/primary/api/controllers/auth_controller.dart';
import 'package:dle_server/kernel/adapters/primary/api/middlewares/auth_middleware.dart';
import 'package:dle_server/kernel/infrastructure/validators/validators.dart';
import 'package:ruta/annotations.dart';
import 'package:ruta/ruta.dart';

Future<Response> handler(Request req) async => Response.json();

@rutaRoute
class AuthRoute extends Route {
  AuthRoute({required this.controller, required this.authMiddleware});

  final AuthController controller;
  final AuthMiddleware authMiddleware;

  Endpoint get register {
    return Endpoint.post(
      path: 'register',
      body: [
        Field<String>('email', validators: [Validators.email()]),
        Field<String>('password', validators: [Validators.password()]),
      ],
      handler: controller.register,
    );
  }

  Endpoint get login {
    return Endpoint.post(
      path: 'login',
      body: [
        Field<String>('email', validators: [Validators.email()]),
        Field<String>('password'),
      ],
      handler: controller.login,
    );
  }

  Endpoint get refreshSession {
    return Endpoint.post(
      path: 'refresh',
      body: [Field<String>('refreshToken')],
      handler: controller.refreshSession,
    );
  }

  Endpoint get revokeSession {
    return Endpoint.delete(
      path: 'sessions/<id>',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.revokeSession,
    );
  }

  Endpoint get revokeAllSessions {
    return Endpoint.delete(
      path: 'sessions',
      authRequired: true,
      middlewares: [authMiddleware],
      handler: controller.revokeAllSessions,
    );
  }

  Endpoint get confirmEmail {
    return Endpoint.post(
      path: 'confirm-email',
      body: [
        Field<String>('email', validators: [Validators.email()]),
        Field<String>('code', validators: [Validators.minLength(6)]),
      ],
      handler: controller.confirmEmail,
    );
  }

  Endpoint get sendEmailVerification {
    return Endpoint.post(
      path: 'send-verification',
      body: [
        Field<String>('email', validators: [Validators.email()]),
      ],
      handler: controller.sendEmailVerification,
    );
  }

  Endpoint get forgotPassword {
    return Endpoint.post(
      path: 'forgot-password',
      body: [
        Field<String>('email', validators: [Validators.email()]),
      ],
      handler: controller.forgotPassword,
    );
  }

  Endpoint get resetPassword {
    return Endpoint.post(
      path: 'reset-password',
      body: [
        Field<String>('token'),
        Field<String>('password', validators: [Validators.password()]),
      ],
      handler: controller.resetPassword,
    );
  }
}
