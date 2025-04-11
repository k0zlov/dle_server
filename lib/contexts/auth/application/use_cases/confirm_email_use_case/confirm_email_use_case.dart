import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/email_codes_repository_port.dart';
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
    required String email,
  }) = _ConfirmEmailParams;

  factory ConfirmEmailParams.fromJson(Map<String, dynamic> json) =>
      _$ConfirmEmailParamsFromJson(json);
}

@lazySingleton
class ConfirmEmailUseCase
    implements UseCase<ConfirmEmailError, User, ConfirmEmailParams> {
  const ConfirmEmailUseCase({
    required this.repository,
    required this.emailCodesRepository,
  });

  final UsersRepositoryPort repository;
  final EmailCodesRepositoryPort emailCodesRepository;

  @override
  Future<Either<ConfirmEmailError, User>> call(
    ConfirmEmailParams params,
  ) async {
    final User? foundUser = await repository.findUser(email: params.email);

    if (foundUser == null) {
      return const Left(ConfirmEmailError.userNotFound);
    }

    if (foundUser.emailVerified) {
      return const Left(ConfirmEmailError.alreadyVerified);
    }

    final EmailCode? emailCode = await emailCodesRepository.findByCode(
      userId: foundUser.id,
      code: params.code,
    );

    if (emailCode == null) {
      return const Left(ConfirmEmailError.codeNotFound);
    }

    final codeOrError = emailCode.verify(params.code);

    return codeOrError.fold(
      (err) => Left(switch (err) {
        EmailCodeError.codeNotFound => ConfirmEmailError.codeNotFound,
        EmailCodeError.alreadyVerified => ConfirmEmailError.alreadyVerified,
        EmailCodeError.invalidCode => ConfirmEmailError.invalidCode,
        EmailCodeError.codeExpired => ConfirmEmailError.codeExpired,
      }),
      (code) async {
        await emailCodesRepository.save(code);

        final user = foundUser.verifyEmail();
        await repository.saveUser(user);

        return Right(user);
      },
    );
  }
}
