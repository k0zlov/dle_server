import 'dart:io';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/profiles/domain/exceptions/profiles_exceptions.dart';
import 'package:dle_server/kernel/adapters/primary/api/exceptions/exceptions_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class DleExceptionsMapper extends ExceptionsMapper {
  @override
  ExceptionsMapping get mapping => {
    // AppException mappings
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
  };
}
