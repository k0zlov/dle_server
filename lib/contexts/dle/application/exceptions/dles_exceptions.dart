import 'package:dle_server/kernel/application/exceptions/app_exception.dart';

class DleLimitCreationException implements AppException {}

class EditorNotFoundException implements AppException {}

class EditorPermissionsException implements AppException {}

class DleNotFoundException implements AppException {}

class CouldNotUploadAssetException implements AppException {}

class TooManyInvitesException implements AppException {}

class UserAlreadyInvitedException implements AppException {}

class InvitationNotFoundException implements AppException {}

class InvalidInvitationUserException implements AppException {}

class InvitationCanceledException implements AppException {}
