import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/password_reset_tokens_repository_port.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/password_reset_token/password_reset_token.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_use_case.freezed.dart';

part 'reset_password_use_case.g.dart';

enum ResetPasswordError {
  userNotFound,
  tokenNotFound,
  tokenExpired,
  tokenAlreadyUsed,
}

@freezed
class ResetPasswordParams with _$ResetPasswordParams {
  const factory ResetPasswordParams({
    required String token,
    required String password,
  }) = _ResetPasswordParams;

  factory ResetPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordParamsFromJson(json);
}

@lazySingleton
class ResetPasswordUseCase
    implements UseCase<ResetPasswordError, void, ResetPasswordParams> {
  const ResetPasswordUseCase({
    required this.repository,
    required this.passwordResetTokensRepository,
  });

  final UsersRepositoryPort repository;
  final PasswordResetTokensRepositoryPort passwordResetTokensRepository;

  @override
  Future<Either<ResetPasswordError, void>> call(
    ResetPasswordParams params,
  ) async {
    final PasswordResetToken? foundToken = await passwordResetTokensRepository
        .find(id: params.token);

    if (foundToken == null) {
      return const Left(ResetPasswordError.tokenNotFound);
    }

    final tokenOrError = foundToken.use();

    return tokenOrError.fold(
      (err) => Left(switch (err) {
        PasswordResetTokenError.tokenExpired => ResetPasswordError.tokenExpired,
        PasswordResetTokenError.alreadyUsed =>
          ResetPasswordError.tokenAlreadyUsed,
      }),
      (usedToken) async {
        await passwordResetTokensRepository.save(usedToken);

        User? user = await repository.findUser(id: foundToken.userId);

        if (user == null) {
          return const Left(ResetPasswordError.userNotFound);
        }

        user = user.changePassword(params.password);
        await repository.saveUser(user);

        return const Right(null);
      },
    );
  }
}
