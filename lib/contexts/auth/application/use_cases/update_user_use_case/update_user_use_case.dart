import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/application/use_cases/send_email_code_use_case/send_email_code_use_case.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_user_use_case.freezed.dart';

part 'update_user_use_case.g.dart';

enum UpdateUserError {
  userNotFound,
  emailIsNotAvailable,
  wrongPassword,
  couldNotSendEmailVerification,
}

@freezed
class UpdateUserParams with _$UpdateUserParams {
  const factory UpdateUserParams({
    required String userId,
    required String email,
    required String password,
  }) = _UpdateUserParams;

  factory UpdateUserParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserParamsFromJson(json);
}

@lazySingleton
class UpdateUserUseCase
    implements UseCase<UpdateUserError, User, UpdateUserParams> {
  const UpdateUserUseCase({
    required this.repository,
    required this.sendEmailCodeUseCase,
  });

  final UsersRepositoryPort repository;
  final SendEmailCodeUseCase sendEmailCodeUseCase;

  @override
  Future<Either<UpdateUserError, User>> call(UpdateUserParams params) async {
    final User? foundUser = await repository.findUser(id: params.userId);

    if (foundUser == null) {
      return const Left(UpdateUserError.userNotFound);
    }

    final User? userWithSuchEmail = await repository.findUser(
      email: params.email,
    );

    if (userWithSuchEmail != null) {
      return const Left(UpdateUserError.emailIsNotAvailable);
    }

    if (!foundUser.checkPassword(params.password)) {
      return const Left(UpdateUserError.wrongPassword);
    }

    final User updatedUser = foundUser.changeEmail(email: params.email);
    await repository.saveUser(updatedUser);

    final successOrError = await sendEmailCodeUseCase(
      SendEmailCodeParams(email: updatedUser.email),
    );

    return successOrError.fold(
      (err) => Left(switch (err) {
        SendEmailCodeError.userNotFound => UpdateUserError.userNotFound,
        SendEmailCodeError.alreadyVerified ||
        SendEmailCodeError.couldNotSendLetter ||
        SendEmailCodeError
            .tooManyRequests => UpdateUserError.couldNotSendEmailVerification,
      }),
      (_) {
        return Right(updatedUser);
      },
    );
  }
}
