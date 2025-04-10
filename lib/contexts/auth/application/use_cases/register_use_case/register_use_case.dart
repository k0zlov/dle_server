import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_use_case.freezed.dart';

part 'register_use_case.g.dart';

enum RegisterError { emailIsNotAvailable }

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String email,
    required String password,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}

@lazySingleton
class RegisterUseCase implements UseCase<RegisterError, User, RegisterParams> {
  const RegisterUseCase({required this.repository});

  final UsersRepositoryPort repository;

  @override
  Future<Either<RegisterError, User>> call(RegisterParams params) async {
    final User? foundUser = await repository.findUser(email: params.email);

    if (foundUser != null) {
      return const Left(RegisterError.emailIsNotAvailable);
    }

    final User user = User.create(
      email: params.email,
      password: params.password,
    );

    await repository.saveUser(user);

    // TODO(kozlov): Send email verification
    // ...

    return Right(user);
  }
}
