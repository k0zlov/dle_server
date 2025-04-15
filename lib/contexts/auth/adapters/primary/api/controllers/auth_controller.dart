import 'package:dle_server/contexts/auth/adapters/primary/api/dto/user_dto/user_dto.dart';
import 'package:dle_server/contexts/auth/adapters/primary/api/exceptions/auth_exceptions_mapper.dart';
import 'package:dle_server/contexts/auth/application/use_cases/confirm_email_use_case/confirm_email_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/forgot_password_use_case/forgot_password_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/login_use_case/login_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/refresh_session_use_case/refresh_session_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/register_use_case/register_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/reset_password_use_case/reset_password_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/revoke_all_sessions_use_case/revoke_all_sessions_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/revoke_session_use_case/revoke_session_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/send_email_code_use_case/send_email_code_use_case.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/message_dto.dart';
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
    required this.confirmEmailUseCase,
    required this.sendEmailCodeUseCase,
    required this.forgotPasswordUseCase,
    required this.resetPasswordUseCase,
    required this.mapper,
  });

  final RegisterUseCase registerUseCase;
  final LoginUseCase loginUseCase;
  final RefreshSessionUseCase refreshSessionUseCase;
  final RevokeSessionUseCase revokeSessionUseCase;
  final RevokeAllSessionsUseCase revokeAllSessionsUseCase;
  final ConfirmEmailUseCase confirmEmailUseCase;
  final SendEmailCodeUseCase sendEmailCodeUseCase;
  final ForgotPasswordUseCase forgotPasswordUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  final AuthExceptionsMapper mapper;

  Future<Response> register(Request req) async {
    final params = RegisterParams.fromJson(req.data);

    try {
      final user = await registerUseCase(params);
      return Response.json(body: UserDto.fromEntity(user));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> login(Request req) async {
    final params = LoginParams.fromJson(
      req.data.copyWith({'ip': req.ip, 'deviceInfo': req.userAgent}),
    );

    try {
      final tokens = await loginUseCase(params);
      return Response.json(body: tokens.toMap());
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> refreshSession(Request req) async {
    final params = RefreshSessionParams.fromJson(
      req.data.copyWith({'ip': req.ip, 'deviceInfo': req.userAgent}),
    );

    try {
      final tokens = await refreshSessionUseCase(params);
      return Response.json(body: tokens.toMap());
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> revokeSession(Request req) async {
    final params = RevokeSessionParams(
      userId: req.payload.userId,
      sessionId: req.uri.pathSegments.last,
    );

    try {
      final user = await revokeSessionUseCase(params);
      return Response.json(body: UserDto.fromEntity(user));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> revokeAllSessions(Request req) async {
    final params = RevokeAllSessionsParams(
      userId: req.payload.userId,
      sourceSessionId: req.payload.sessionId,
    );

    try {
      final user = await revokeAllSessionsUseCase(params);
      return Response.json(body: UserDto.fromEntity(user));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> confirmEmail(Request req) async {
    final params = ConfirmEmailParams.fromJson(req.data);

    try {
      final user = await confirmEmailUseCase(params);
      return Response.json(body: UserDto.fromEntity(user));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> sendEmailVerification(Request req) async {
    final params = SendEmailCodeParams.fromJson(req.data);

    try {
      await sendEmailCodeUseCase(params);
      return Response.json(
        body: const MessageDto(
          message: 'Email verification code was sent to your email.',
        ),
      );
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> forgotPassword(Request req) async {
    final params = ForgotPasswordParams.fromJson(req.data);

    try {
      await forgotPasswordUseCase(params);
      return Response.json(
        body: const MessageDto(
          message: 'Password reset link was sent to your email.',
        ),
      );
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> resetPassword(Request req) async {
    final params = ResetPasswordParams.fromJson(req.data);

    try {
      await resetPasswordUseCase(params);
      return Response.json(
        body: const MessageDto(message: 'Password was successfully reset.'),
      );
    } catch (e) {
      throw mapper(e);
    }
  }
}
