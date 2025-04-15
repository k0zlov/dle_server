import 'package:collection/collection.dart';
import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'revoke_session_use_case.freezed.dart';

part 'revoke_session_use_case.g.dart';

@freezed
class RevokeSessionParams with _$RevokeSessionParams {
  const factory RevokeSessionParams({
    required String userId,
    required String sessionId,
  }) = _RevokeSessionParams;

  factory RevokeSessionParams.fromJson(Map<String, dynamic> json) =>
      _$RevokeSessionParamsFromJson(json);
}

@lazySingleton
class RevokeSessionUseCase implements UseCase<User, RevokeSessionParams> {
  const RevokeSessionUseCase({required this.repository});

  final UsersRepositoryPort repository;

  @override
  Future<User> call(RevokeSessionParams params) async {
    final User? user = await repository.findUser(
      id: params.userId,
      includeSessions: true,
    );

    if (user == null) {
      throw UserNotFoundException();
    }

    print('first');

    final AuthSession? session = user.sessions.firstWhereOrNull(
      (e) => e.id == params.sessionId,
    );
    print(session);

    if (session == null) {
      throw SessionNotFoundException();
    }

    final User userWithoutSession = user.revokeSession(session.id);
    await repository.saveUser(userWithoutSession, overrideSessions: true);

    return userWithoutSession;
  }
}
