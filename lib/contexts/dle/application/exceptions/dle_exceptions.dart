import 'package:dle_server/kernel/application/exceptions/app_exception.dart';

class DleLimitCreationException implements AppException {}

class EditorNotFoundException implements AppException {}

class EditorPermissionsException implements AppException {}

class DleNotFoundException implements AppException {}

class CouldNotUploadFileException implements AppException {}

class TooManyInvitesException implements AppException {}

class UserAlreadyInvitedException implements AppException {}

class InvitationNotFoundException implements AppException {}

class InvalidInvitationUserException implements AppException {}

class RoleUpgradeNotAllowedException implements AppException {}

class OwnerCannotLeaveDleException implements AppException {}

class CharacterNotFoundException implements AppException {}

class HintsQuantityException implements AppException {}

class HintNotFoundException implements AppException {}

class CharacterHintNotFoundException implements AppException {}

class ParameterNotFoundException implements AppException {}

class SelectableValueNotFoundException implements AppException {}

class CharacterParameterNotFoundException implements AppException {}

class InvalidParameterValueType implements AppException {}

//
class DleAssetNotFoundException implements AppException {}
