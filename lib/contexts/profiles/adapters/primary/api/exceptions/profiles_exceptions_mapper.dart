import 'dart:io';

import 'package:dle_server/contexts/profiles/application/exceptions/profiles_exceptions.dart';
import 'package:dle_server/contexts/profiles/domain/exceptions/profiles_exceptions.dart';
import 'package:dle_server/kernel/adapters/primary/api/exceptions/exceptions_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class ProfilesExceptionsMapper extends ExceptionsMapper {
  @override
  ExceptionsMapping get mapping => {
    // AppException mappings
    ProfileNotFoundException: const ApiException.notFound(
      'The specified profile was not found.',
    ),
    UsernameIsNotAvailableException: const ApiException(
      'The username is unavailable. Please choose a different username.',
      statusCode: HttpStatus.conflict,
    ),
    CouldNotUploadPictureException: const ApiException.internalServerError(
      'Failed to upload the profile picture. Please try again later.',
    ),

    // DomainException mappings
    ProfileAlreadySetUpException: const ApiException.badRequest(
      'The profile has already been set up.',
    ),
  };
}
