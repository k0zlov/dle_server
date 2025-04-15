import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_current_user_use_case.freezed.dart';

part 'get_current_user_use_case.g.dart';

@freezed
class GetCurrentUserParams with _$GetCurrentUserParams {
  const factory GetCurrentUserParams({required String userId}) =
      _GetCurrentUserParams;

  factory GetCurrentUserParams.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUserParamsFromJson(json);
}

@lazySingleton
class GetCurrentUserUseCase implements UseCase<User, GetCurrentUserParams> {
  const GetCurrentUserUseCase({required this.repository});

  final UsersRepositoryPort repository;

  @override
  Future<User> call(GetCurrentUserParams params) async {
    final User? foundUser = await repository.findUser(
      id: params.userId,
      includeSessions: true,
    );

    if (foundUser == null) {
      throw UserNotFoundException();
    }

    return foundUser;
  }
}
