import 'package:bcrypt/bcrypt.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/shared_kernel/domain/entities/entity.dart';

part 'user.mapper.dart';

@MappableClass()
class User extends Entity with UserMappable {
  User({
    super.id,
    required this.email,
    required this.passwordHash,
    required this.updatedAt,
    required this.createdAt,
    this.sessions = const <AuthSession>{},
  });

  User.create({
    required this.email,
    required String password,
    this.sessions = const <AuthSession>{},
  })  : passwordHash = BCrypt.hashpw(password, BCrypt.gensalt()),
        updatedAt = DateTime.now(),
        createdAt = DateTime.now();

  final String email;

  final String passwordHash;

  final Set<AuthSession> sessions;

  final DateTime updatedAt;
  final DateTime createdAt;

  User changePassword(String newPasswordHash) {
    return copyWith(passwordHash: newPasswordHash);
  }

  User removeSession(String sessionId) {
    sessions.removeWhere((s) => s.ip == sessionId);
    return copyWith(updatedAt: DateTime.now());
  }

  User addSession(AuthSession session) {
    return copyWith(sessions: {...sessions, session});
  }
}
