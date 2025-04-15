import 'package:dle_server/kernel/application/exceptions/app_exception.dart';

class EmailAlreadyVerifiedException implements AppException {}

class UserNotFoundException implements AppException {}

class WrongCredentialsException implements AppException {}

class EmailCodeNotFoundException implements AppException {}

class TooManyEmailVerificationRequestsException implements AppException {}

class CouldNotSentEmailLetter implements AppException {}

class EmailIsNotVerifiedException implements AppException {}

class TooManyForgotPasswordRequestsException implements AppException {}

class CouldNotSendTokenException implements AppException {}

class SessionNotFoundException implements AppException {}

class EmailIsNotAvailableException implements AppException {}

class ResetPasswordTokenNotFound implements AppException {}
