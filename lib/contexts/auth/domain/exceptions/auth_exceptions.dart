import 'package:dle_server/kernel/domain/exceptions/domain_exception.dart';

class EmailCodeAlreadyVerified implements DomainException {}

class InvalidEmailCodeException implements DomainException {}

class InvalidSessionTokenException implements DomainException {}

class SessionExpiredException implements DomainException {}

class InvalidPasswordResetTokenException implements DomainException {}
