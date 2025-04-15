import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'revoke_all_sessions_use_case.freezed.dart';

part 'revoke_all_sessions_use_case.g.dart';

@freezed
class RevokeAllSessionsParams with _$RevokeAllSessionsParams {
  const factory RevokeAllSessionsParams({
    required String userId,
    required String sourceSessionId,
  }) = _RevokeAllSessionsParams;

  factory RevokeAllSessionsParams.fromJson(Map<String, dynamic> json) =>
      _$RevokeAllSessionsParamsFromJson(json);
}

@lazySingleton
class RevokeAllSessionsUseCase
    implements UseCase<User, RevokeAllSessionsParams> {
  const RevokeAllSessionsUseCase({required this.repository});

  final UsersRepositoryPort repository;

  @override
  Future<User> call(RevokeAllSessionsParams params) async {
    final User? user = await repository.findUser(
      id: params.userId,
      includeSessions: true,
    );

    if (user == null) {
      throw UserNotFoundException();
    }

    final List<AuthSession> newSessions =
        user.sessions.where((e) => e.id == params.sourceSessionId).toList();

    if (newSessions.isEmpty) {
      throw SessionNotFoundException();
    }

    final User userWithoutSessions = user.copyWith(
      sessions: newSessions.toSet(),
    );

    await repository.saveUser(userWithoutSessions, overrideSessions: true);
    return userWithoutSessions;
  }
}
