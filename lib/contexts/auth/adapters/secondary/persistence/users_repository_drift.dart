import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UsersRepositoryPort)
class UsersRepositoryDrift implements UsersRepositoryPort {
  const UsersRepositoryDrift({required this.db});

  final Database db;

  Insertable<User> mapUser(User user) {
    return UsersCompanion(
      id: Value(user.id),
      email: Value(user.email),
      passwordHash: Value(user.passwordHash),
      emailVerified: Value(user.emailVerified),
      updatedAt: Value(user.updatedAt),
      createdAt: Value(user.createdAt),
    );
  }

  Insertable<AuthSession> mapSession(AuthSession session) {
    return AuthSessionsCompanion(
      id: Value(session.id),
      userId: Value(session.userId),
      refreshToken: Value(session.refreshToken),
      ip: Value(session.ip),
      deviceInfo: Value(session.deviceInfo),
      expiresAt: Value(session.expiresAt),
      updatedAt: Value(session.updatedAt),
      createdAt: Value(session.createdAt),
    );
  }

  @override
  Future<User?> findUser({
    String? id,
    String? email,
    bool includeSessions = false,
  }) async {
    assert(
      id != null || email != null,
      'Either "id" or "email" must be provided; both cannot be null.',
    );

    User? user = await db.users.getOrNull((tbl) {
      if (id != null) {
        return tbl.id.equals(UuidValue.fromString(id));
      } else {
        return tbl.email.equals(email!);
      }
    });

    if (user == null) return null;

    if (includeSessions) {
      user = user.copyWith(
        sessions:
            (await db.authSessions.getWhere(
              (tbl) => tbl.userId.equals(UuidValue.fromString(user!.id)),
            )).toSet(),
      );
    }

    return user;
  }

  @override
  Future<void> saveUser(User user, {bool overrideSessions = false}) async {
    return db.transaction<void>(() async {
      await db.users.insertOnConflictUpdate(mapUser(user));

      if (overrideSessions) {
        final List<UuidValue> sessionIds =
            user.sessions.map((e) => UuidValue.fromString(e.id)).toList();

        await db.authSessions.deleteWhere(
          (tbl) =>
              tbl.userId.equals(UuidValue.fromString(user.id)) &
              tbl.id.isNotIn(sessionIds),
        );

        if (user.sessions.isNotEmpty) {
          await db.batch((batch) {
            batch.insertAllOnConflictUpdate(
              db.authSessions,
              user.sessions.map(mapSession),
            );
          });
        }
      }
    });
  }

  @override
  Future<AuthSession?> findSession({String? id, String? token}) async {
    assert(
      id != null || token != null,
      'Either "id" or "token" must be provided; both cannot be null.',
    );

    return db.authSessions.getOrNull((tbl) {
      if (id != null) {
        return tbl.id.equals(UuidValue.fromString(id));
      } else {
        return tbl.refreshToken.equals(token!);
      }
    });
  }

  @override
  Future<void> updateSession(AuthSession session) {
    return db.authSessions.replaceOne(mapSession(session));
  }
}
