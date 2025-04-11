import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_email_use_case.freezed.dart';

part 'confirm_email_use_case.g.dart';

enum ConfirmEmailError {
  userNotFound,
  codeNotFound,
  alreadyVerified,
  invalidCode,
  codeExpired,
}

@freezed
class ConfirmEmailParams with _$ConfirmEmailParams {
  const factory ConfirmEmailParams({
    required String code,
    required String userId,
  }) = _ConfirmEmailParams;

  factory ConfirmEmailParams.fromJson(Map<String, dynamic> json) =>
      _$ConfirmEmailParamsFromJson(json);
}

@lazySingleton
class ConfirmEmailUseCase
    implements UseCase<ConfirmEmailError, User, ConfirmEmailParams> {
  const ConfirmEmailUseCase({required this.repository});

  final UsersRepositoryPort repository;

  @override
  Future<Either<ConfirmEmailError, User>> call(
    ConfirmEmailParams params,
  ) async {
    final User? foundUser = await repository.findUser(
      id: params.userId,
      includeEmailCodes: true,
    );

    if (foundUser == null) {
      return const Left(ConfirmEmailError.userNotFound);
    }

    final userOrError = foundUser.verifyEmail(params.code);

    return userOrError.fold(
      (err) => Left(switch (err) {
        EmailCodeError.codeNotFound => ConfirmEmailError.codeNotFound,
        EmailCodeError.alreadyVerified => ConfirmEmailError.alreadyVerified,
        EmailCodeError.invalidCode => ConfirmEmailError.invalidCode,
        EmailCodeError.codeExpired => ConfirmEmailError.codeExpired,
      }),
      (user) async {
        await repository.saveUser(user, overrideEmailCodes: true);
        return Right(user);
      },
    );
  }
}
