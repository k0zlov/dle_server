import 'package:dle_server/contexts/auth/adapters/primary/api/dto/user_dto/user_dto.dart';
import 'package:dle_server/contexts/auth/application/use_cases/login_use_case/login_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/refresh_session_use_case/refresh_session_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/register_use_case/register_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/revoke_all_sessions_use_case/revoke_all_sessions_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/revoke_session_use_case/revoke_session_use_case.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class AuthController {
  const AuthController({
    required this.registerUseCase,
    required this.loginUseCase,
    required this.refreshSessionUseCase,
    required this.revokeSessionUseCase,
    required this.revokeAllSessionsUseCase,
  });

  final RegisterUseCase registerUseCase;
  final LoginUseCase loginUseCase;
  final RefreshSessionUseCase refreshSessionUseCase;
  final RevokeSessionUseCase revokeSessionUseCase;
  final RevokeAllSessionsUseCase revokeAllSessionsUseCase;

  Future<Response> register(Request req) async {
    final RegisterParams params = RegisterParams.fromJson(req.data);

    final userOrError = await registerUseCase(params);

    return userOrError.fold(
      (err) => switch (err) {
        RegisterError.emailIsNotAvailable =>
          throw const ApiException.forbidden('This email is not available.'),
      },
      (user) {
        return Response.json(body: UserDto.fromEntity(user));
      },
    );
  }

  Future<Response> login(Request req) async {
    final LoginParams params = LoginParams.fromJson(
      req.data.copyWith({'deviceInfo': req.userAgent, 'ip': req.ip}),
    );

    final tokensOrError = await loginUseCase(params);

    return tokensOrError.fold(
      (err) {
        return switch (err) {
          LoginError.noUserWithSuchEmail || LoginError.wrongPassword =>
            throw const ApiException.badRequest(
              'Credentials are wrong. Try again',
            ),
        };
      },
      (tokens) {
        return Response.json(body: tokens.toMap());
      },
    );
  }

  Future<Response> refreshSession(Request req) async {
    final RefreshSessionParams params = RefreshSessionParams.fromJson(
      req.data.copyWith({'deviceInfo': req.userAgent, 'ip': req.ip}),
    );

    final tokensOrError = await refreshSessionUseCase(params);

    return tokensOrError.fold(
      (err) {
        return switch (err) {
          RefreshSessionError.sessionNotFound ||
          RefreshSessionError.invalidToken ||
          RefreshSessionError.sessionExpired =>
            throw const ApiException.badRequest('Could not refresh session.'),
        };
      },
      (tokens) {
        return Response.json(body: tokens.toMap());
      },
    );
  }

  Future<Response> revokeSession(Request req) async {
    final RevokeSessionParams params = RevokeSessionParams(
      userId: req.payload.userId,
      sessionId: req.uri.pathSegments.last,
    );

    final userOrError = await revokeSessionUseCase(params);

    return userOrError.fold(
      (err) {
        return switch (err) {
          RevokeSessionError.userNotFound ||
          RevokeSessionError.sessionNotFound =>
            throw const ApiException.badRequest('Could not revoke session.'),
        };
      },
      (user) {
        return Response.json(body: UserDto.fromEntity(user));
      },
    );
  }

  Future<Response> revokeAllSessions(Request req) async {
    final RevokeAllSessionsParams params = RevokeAllSessionsParams(
      userId: req.payload.userId,
      sourceSessionId: req.payload.sessionId,
    );

    final userOrError = await revokeAllSessionsUseCase(params);

    return userOrError.fold(
      (err) {
        return switch (err) {
          RevokeAllSessionsError.userNotFound ||
          RevokeAllSessionsError.sourceSessionNotFound =>
            throw const ApiException.badRequest(
              'Could not revoke all sessions.',
            ),
        };
      },
      (user) {
        return Response.json(body: UserDto.fromEntity(user));
      },
    );
  }
}
