import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_use_case.freezed.dart';

part 'change_password_use_case.g.dart';

enum ChangePasswordError { userNotFound, wrongPassword }

@freezed
class ChangePasswordParams with _$ChangePasswordParams {
  const factory ChangePasswordParams({
    required String userId,
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordParams;

  factory ChangePasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordParamsFromJson(json);
}

@lazySingleton
class ChangePasswordUseCase
    implements UseCase<ChangePasswordError, void, ChangePasswordParams> {
  const ChangePasswordUseCase({required this.repository});

  final UsersRepositoryPort repository;

  @override
  Future<Either<ChangePasswordError, void>> call(
    ChangePasswordParams params,
  ) async {
    final User? foundUser = await repository.findUser(id: params.userId);

    if (foundUser == null) {
      return const Left(ChangePasswordError.userNotFound);
    }

    if (!foundUser.checkPassword(params.oldPassword)) {
      return const Left(ChangePasswordError.wrongPassword);
    }

    final User updatedUser = foundUser.changePassword(params.newPassword);
    await repository.saveUser(updatedUser);
    return const Right(null);
  }
}
