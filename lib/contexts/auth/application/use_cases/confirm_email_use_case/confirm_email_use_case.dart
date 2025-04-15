import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/email_codes_repository_port.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_email_use_case.freezed.dart';

part 'confirm_email_use_case.g.dart';

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
class ConfirmEmailUseCase implements UseCase<User, ConfirmEmailParams> {
  const ConfirmEmailUseCase({
    required this.repository,
    required this.emailCodesRepository,
  });

  final UsersRepositoryPort repository;
  final EmailCodesRepositoryPort emailCodesRepository;

  @override
  Future<User> call(ConfirmEmailParams params) async {
    final User? foundUser = await repository.findUser(email: params.email);

    if (foundUser == null) {
      throw UserNotFoundException();
    }

    if (foundUser.emailVerified) {
      throw EmailAlreadyVerifiedException();
    }

    final EmailCode? emailCode = await emailCodesRepository.findByCode(
      userId: foundUser.id,
      code: params.code,
    );

    if (emailCode == null) {
      throw EmailCodeNotFoundException();
    }

    final code = emailCode.verify(params.code);
    await emailCodesRepository.save(code);

    final user = foundUser.verifyEmail();
    await repository.saveUser(user);
    return user;
  }
}
