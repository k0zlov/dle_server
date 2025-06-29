import 'dart:io';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/domain/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/profiles/domain/exceptions/profiles_exceptions.dart';
import 'package:dle_server/kernel/adapters/primary/api/exceptions/exceptions_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class DleExceptionsMapper extends ExceptionsMapper {
  @override
  ExceptionsMapping get mapping => {
    DleLimitCreationException: const ApiException.badRequest(
      'You have reached the limit for creating new DLEs.',
    ),
    EditorNotFoundException: const ApiException.notFound(
      'The specified editor could not be found.',
    ),
    EditorPermissionsException: const ApiException.forbidden(
      'You do not have the permissions to perform this action.',
    ),
    DleNotFoundException: const ApiException.notFound(
      'The requested DLE was not found.',
    ),
    CouldNotUploadFileException: const ApiException.internalServerError(
      'Failed to upload the file. Please try again later.',
    ),
    TooManyInvitesException: const ApiException.badRequest(
      'The maximum number of invites has been reached.',
    ),
    UserAlreadyInvitedException: const ApiException(
      'The specified user has already been invited.',
      statusCode: HttpStatus.conflict,
    ),
    InvitationNotFoundException: const ApiException.notFound(
      'The invitation could not be found.',
    ),
    InvalidInvitationUserException: const ApiException.badRequest(
      'The user specified in the invitation is invalid.',
    ),
    InvitationCanceledException: const ApiException(
      'The invitation has been canceled and is no longer valid.',
      statusCode: HttpStatus.gone,
    ),
    RoleUpgradeNotAllowedException: const ApiException.forbidden(
      'Changing the editor role to "owner" is not allowed.',
    ),
    ProfileAlreadySetUpException: const ApiException.badRequest(
      'The profile has already been set up.',
    ),
    OwnerCannotLeaveDleException: const ApiException.forbidden(
      'The owner of a DLE cannot leave it.',
    ),
    InvitationAlreadyAcceptedException: const ApiException.badRequest(
      'The invitation has already been accepted.',
    ),
    InvitationExpiredException: const ApiException(
      'The invitation has expired and is no longer valid.',
      statusCode: HttpStatus.gone,
    ),
    WrongHintValueTypeException: const ApiException.badRequest(
      'The provided hint value type is invalid.',
    ),
    TooManyParametersInBasicDleException: const ApiException.badRequest(
      'The maximum number of parameters for this Basic DLE has been exceeded.',
    ),

    MultipleValuesNotAllowedException: const ApiException.badRequest(
      'Multiple values are not allowed for this parameter.',
    ),
    CharacterNotFoundException: const ApiException.notFound(
      'The requested character was not found.',
    ),
    HintsQuantityException: const ApiException.badRequest(
      'The number of hints provided exceeds the allowed limit.',
    ),
    HintNotFoundException: const ApiException.notFound(
      'The requested hint was not found.',
    ),
    CharacterHintNotFoundException: const ApiException.notFound(
      'The hint associated with the specified character was not found.',
    ),
    ParameterNotFoundException: const ApiException.notFound(
      'The specified parameter was not found.',
    ),
    SelectableValueNotFoundException: const ApiException.notFound(
      'The requested selectable value was not found.',
    ),
    CharacterParameterNotFoundException: const ApiException.notFound(
      'The requested character parameter was not found.',
    ),
    InvalidParameterValueType: const ApiException.badRequest(
      'The provided parameter value type is invalid.',
    ),
  };
}
