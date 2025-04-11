import 'dart:io';

import 'package:dle_server/contexts/auth/adapters/primary/api/dto/user_dto/user_dto.dart';
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
          LoginError.userNotFound || LoginError.wrongPassword =>
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

  Future<Response> confirmEmail(Request req) async {
    final ConfirmEmailParams params = ConfirmEmailParams.fromJson(req.data);

    final userOrError = await confirmEmailUseCase(params);

    return userOrError.fold(
      (err) {
        return switch (err) {
          ConfirmEmailError.userNotFound =>
            throw const ApiException.notFound('User not found.'),

          ConfirmEmailError.alreadyVerified =>
            throw const ApiException.badRequest(
              'This email has already been verified.',
            ),

          ConfirmEmailError.invalidCode ||
          ConfirmEmailError.codeExpired ||
          ConfirmEmailError.codeNotFound =>
            throw const ApiException.badRequest(
              'Provided verification code is invalid.',
            ),
        };
      },
      (user) {
        return Response.json(body: UserDto.fromEntity(user));
      },
    );
  }

  Future<Response> sendEmailVerification(Request req) async {
    final SendEmailCodeParams params = SendEmailCodeParams.fromJson(req.data);

    final successOrError = await sendEmailCodeUseCase(params);

    return successOrError.fold(
      (err) {
        return switch (err) {
          SendEmailCodeError.alreadyVerified =>
            throw const ApiException.badRequest(
              'This email has already been verified.',
            ),

          SendEmailCodeError.userNotFound =>
            throw const ApiException.notFound('User not found.'),

          SendEmailCodeError.couldNotSendLetter =>
            throw const ApiException.badRequest(
              'Could not send verification email. Please try again later.',
            ),

          SendEmailCodeError.tooManyRequests =>
            throw const ApiException(
              'Too many email verification requests. Try again another day.',
              statusCode: HttpStatus.tooManyRequests,
            ),
        };
      },
      (_) {
        return Response.json(
          body: const MessageDto(
            message: 'Email verification code was sent to your email.',
          ),
        );
      },
    );
  }

  Future<Response> forgotPassword(Request req) async {
    final ForgotPasswordParams params = ForgotPasswordParams.fromJson(req.data);

    final successOrError = await forgotPasswordUseCase(params);

    return successOrError.fold(
      (err) {
        return switch (err) {
          ForgotPasswordError.userNotFound =>
            throw const ApiException.notFound('User not found.'),

          ForgotPasswordError.emailIsNotVerified =>
            throw const ApiException.badRequest(
              'Your email address is not verified. A verification email has been sent.',
            ),

          ForgotPasswordError.couldNotSendEmailVerification =>
            throw const ApiException(
              'Your email address is not verified. Email verification could not be sent. Please try again later.',
              statusCode: HttpStatus.badRequest,
            ),

          ForgotPasswordError.couldNotSendToken =>
            throw const ApiException.internalServerError(
              'Password reset email could not be sent. Please try again later.',
            ),

          ForgotPasswordError.tooManyRequests =>
            throw const ApiException(
              'Too many password reset requests. Please try again later.',
              statusCode: HttpStatus.tooManyRequests,
            ),
        };
      },
      (_) {
        return Response.json(
          body: const MessageDto(
            message: 'Password reset link was sent to your email.',
          ),
        );
      },
    );
  }

  Future<Response> resetPassword(Request req) async {
    final ResetPasswordParams params = ResetPasswordParams.fromJson(req.data);

    final successOrError = await resetPasswordUseCase(params);

    return successOrError.fold(
      (err) {
        return switch (err) {
          ResetPasswordError.userNotFound =>
            throw const ApiException.notFound(
              'User associated with this request was not found.',
            ),

          ResetPasswordError.tokenNotFound ||
          ResetPasswordError.tokenExpired ||
          ResetPasswordError.tokenAlreadyUsed =>
            throw const ApiException.badRequest(
              'Invalid or expired password reset request. Please request a new password reset.',
            ),
        };
      },
      (_) {
        return Response.json(
          body: const MessageDto(message: 'Password was successfully reset.'),
        );
      },
    );
  }
}
