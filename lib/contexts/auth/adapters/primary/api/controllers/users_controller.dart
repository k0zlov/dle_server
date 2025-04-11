import 'dart:io';

import 'package:dle_server/contexts/auth/adapters/primary/api/dto/user_dto/user_dto.dart';
import 'package:dle_server/contexts/auth/application/use_cases/change_password_use_case/change_password_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/get_current_user_use_case/get_current_user_use_case.dart';
import 'package:dle_server/contexts/auth/application/use_cases/update_user_use_case/update_user_use_case.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/message_dto.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class UsersRestController {
  const UsersRestController({
    required this.getCurrentUserUseCase,
    required this.updateUserUseCase,
    required this.changePasswordUseCase,
  });

  final GetCurrentUserUseCase getCurrentUserUseCase;
  final UpdateUserUseCase updateUserUseCase;
  final ChangePasswordUseCase changePasswordUseCase;

  Future<Response> getCurrentUser(Request req) async {
    final GetCurrentUserParams params = GetCurrentUserParams(
      userId: req.payload.userId,
    );

    final userOrError = await getCurrentUserUseCase(params);

    return userOrError.fold(
      (err) => switch (err) {
        GetCurrentUserError.userNotFound =>
          throw const ApiException.internalServerError('User was not found.'),
      },
      (user) {
        return Response.json(body: UserDto.fromEntity(user));
      },
    );
  }

  Future<Response> updateUser(Request req) async {
    final UpdateUserParams params = UpdateUserParams.fromJson(
      req.data.copyWith({'userId': req.payload.userId}),
    );

    final userOrError = await updateUserUseCase(params);

    return userOrError.fold(
      (err) => switch (err) {
        UpdateUserError.userNotFound =>
          throw const ApiException.notFound('User not found.'),

        UpdateUserError.emailIsNotAvailable =>
          throw const ApiException.badRequest(
            'This email address is not available.',
          ),

        UpdateUserError.wrongPassword =>
          throw const ApiException.badRequest(
            'The provided password is incorrect. Please try again.',
          ),
        UpdateUserError.couldNotSendEmailVerification =>
          throw const ApiException(
            'Could not send email verification code. Please try again later.',
            statusCode: HttpStatus.tooManyRequests,
          ),
      },
      (user) {
        return Response.json(body: UserDto.fromEntity(user));
      },
    );
  }

  Future<Response> changePassword(Request req) async {
    final ChangePasswordParams params = ChangePasswordParams.fromJson(
      req.data.copyWith({'userId': req.payload.userId}),
    );

    final successOrError = await changePasswordUseCase(params);

    return successOrError.fold(
      (err) => switch (err) {
        ChangePasswordError.userNotFound =>
          throw const ApiException.notFound('User not found.'),
        ChangePasswordError.wrongPassword =>
          throw const ApiException.badRequest(
            'The provided password is incorrect. Please try again.',
          ),
      },
      (_) {
        return Response.json(
          body: const MessageDto(message: 'Successfully changed password'),
        );
      },
    );
  }
}
