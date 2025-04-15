import 'dart:io';

import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/domain/exceptions/auth_exceptions.dart';
import 'package:dle_server/kernel/adapters/primary/api/exceptions/exceptions_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class AuthExceptionsMapper extends ExceptionsMapper {
  @override
  ExceptionsMapping get mapping => {
    // AppException mappings
    EmailAlreadyVerifiedException: const ApiException.badRequest(
      'The email has already been verified.',
    ),
    UserNotFoundException: const ApiException.notFound(
      'The specified user was not found.',
    ),
    WrongCredentialsException: const ApiException.unauthorized(
      'The entered credentials are incorrect.',
    ),
    EmailCodeNotFoundException: const ApiException.notFound(
      'The specified email verification code was not found.',
    ),
    TooManyEmailVerificationRequestsException: const ApiException(
      'Too many email verification requests. Please try again later.',
      statusCode: HttpStatus.tooManyRequests,
    ),
    CouldNotSentEmailLetter: const ApiException.internalServerError(
      'Failed to send an email letter.',
    ),
    EmailIsNotVerifiedException: const ApiException.forbidden(
      'The email address has not been verified yet.',
    ),
    TooManyForgotPasswordRequestsException: const ApiException(
      'You have made too many password reset requests. '
      'Please wait and try again later.',
      statusCode: HttpStatus.tooManyRequests,
    ),
    CouldNotSendTokenException: const ApiException.internalServerError(
      'Failed to send the token.',
    ),
    SessionNotFoundException: const ApiException.notFound(
      'The specified session was not found.',
    ),
    EmailIsNotAvailableException: const ApiException(
      'This email address is unavailable.',
      statusCode: HttpStatus.conflict,
    ),
    ResetPasswordTokenNotFound: const ApiException.notFound(
      'The provided reset password token was not found or has expired.',
    ),

    // DomainException mappings
    EmailCodeAlreadyVerified: const ApiException.badRequest(
      'This email verification code has already been used or verified.',
    ),
    InvalidEmailCodeException: const ApiException.badRequest(
      'The provided email verification code is invalid.',
    ),
    InvalidSessionTokenException: const ApiException.unauthorized(
      'The provided session token is invalid.',
    ),
    SessionExpiredException: const ApiException.unauthorized(
      'The current session has expired.',
    ),
    InvalidPasswordResetTokenException: const ApiException.badRequest(
      'The provided password reset token is invalid or expired.',
    ),
  };
}
