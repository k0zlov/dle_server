import 'package:dle_server/bounded_contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/user/user.dart';

abstract interface class UsersRepositoryPort {
  Future<User> saveUser(User user);

  Future<User?> findUserById(String id);

  Future<User?> findUserByEmail(String email);

  Future<void> updateUser(User user);

  Future<void> updateUserSessions(String id, Set<AuthSession> sessions);

  Future<void> deleteAllUserSessions(String userId);

  Future<Set<AuthSession>> findSessionsByUserId(String userId);

  Future<AuthSession?> findSessionById(String id);

  Future<AuthSession?> findSessionByToken(String token);

  Future<void> updateSession(AuthSession session);

  Future<void> deleteSession(String id);
}
