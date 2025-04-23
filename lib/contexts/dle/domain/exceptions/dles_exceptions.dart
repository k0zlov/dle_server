import 'package:dle_server/kernel/domain/exceptions/domain_exception.dart';

class InvitationAlreadyAcceptedException implements DomainException {}

class InvitationExpiredException implements DomainException {}

class InvitationCanceledException implements DomainException {}
