import 'package:dle_server/bounded_contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/database.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/index.dart';

class UsersRepositoryDrift implements UsersRepositoryPort {
  const UsersRepositoryDrift({required this.database});

  final Database database;

  Insertable<User> _userToInsert(User user) {
    return UsersCompanion.insert(
      id: user.id,
      email: user.email,
      passwordHash: user.passwordHash,
    );
  }

  Insertable<AuthSession> _sessionToInsert(AuthSession session) {
    return AuthSessionsCompanion.insert(
      id: session.id,
      userId: session.userId,
      refreshToken: session.refreshToken,
      expiresAt: session.expiresAt,
    );
  }

  @override
  Future<User?> findUserByEmail(String email) async {
    final User? user = await database.users.getOrNull(
      (tbl) => tbl.email.equals(email),
    );

    if (user == null) return null;

    return user.copyWith(sessions: await findSessionsByUserId(user.id));
  }

  @override
  Future<User?> findUserById(String id) async {
    final User? user = await database.users.getOrNull(
      (tbl) => tbl.email.equals(id),
    );

    if (user == null) return null;

    return user.copyWith(sessions: await findSessionsByUserId(user.id));
  }

  @override
  Future<User> saveUser(User user) {
    return database.transaction<User>(() async {
      final User inserted = await database.users.insertReturning(
        _userToInsert(user),
      );

      final Set<AuthSession> sessions = await updateUserSessions(
        user.id,
        user.sessions,
      );

      return inserted.copyWith(sessions: sessions);
    });
  }

  @override
  Future<void> updateUser(User user) {
    return database.transaction(() async {
      await database.users.replaceOne(
        _userToInsert(user),
      );

      await updateUserSessions(user.id, user.sessions);
    });
  }

  @override
  Future<Set<AuthSession>> updateUserSessions(
    String id,
    Set<AuthSession> sessions,
  ) {
    return database.transaction(() async {
      final Set<String> sessionIds = sessions.map((e) => e.id).toSet();

      await database.authSessions.deleteWhere(
        (tbl) => tbl.id.isNotIn(sessionIds) & tbl.userId.equals(id),
      );

      for (final AuthSession session in sessions) {
        await database.authSessions.insertOnConflictUpdate(
          _sessionToInsert(session),
        );
      }

      return sessions;
    });
  }

  @override
  Future<Set<AuthSession>> findSessionsByUserId(String userId) async {
    return (await database.authSessions
            .getWhere((tbl) => tbl.userId.equals(userId)))
        .toSet();
  }

  @override
  Future<AuthSession?> findSessionById(String id) {
    return database.authSessions.getOrNull((tbl) => tbl.id.equals(id));
  }

  @override
  Future<AuthSession?> findSessionByToken(String token) {
    return database.authSessions.getOrNull(
      (tbl) => tbl.refreshToken.equals(token),
    );
  }

  @override
  Future<void> updateSession(AuthSession session) async {
    return database.authSessions.replaceOne(_sessionToInsert(session));
  }

  @override
  Future<void> deleteSession(String id) {
    return database.authSessions.deleteWhere((tbl) => tbl.id.equals(id));
  }

  @override
  Future<void> deleteAllUserSessions(String userId) {
    return database.authSessions.deleteWhere(
      (tbl) => tbl.userId.equals(userId),
    );
  }
}
