import 'package:bcrypt/bcrypt.dart';
import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/exceptions/auth_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'user.mapper.dart';

@MappableClass()
class User extends Entity with UserMappable {
  User({
    super.id,
    required this.email,
    required this.passwordHash,
    required this.updatedAt,
    required this.createdAt,
    required this.emailVerified,
    this.sessions = const <AuthSession>{},
  });

  User.create({
    required this.email,
    required String password,
    this.sessions = const <AuthSession>{},
  }) : emailVerified = false,
       passwordHash = BCrypt.hashpw(password, BCrypt.gensalt()),
       updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String email;

  final String passwordHash;

  final bool emailVerified;

  final Set<AuthSession> sessions;

  final DateTime updatedAt;
  final DateTime createdAt;

  User changeEmail({String? email}) {
    return copyWith(
      email: email,
      emailVerified: false,
      updatedAt: DateTime.now(),
    );
  }

  bool checkPassword(String password) {
    return BCrypt.checkpw(password, passwordHash);
  }

  User changePassword(String newPassword) {
    return copyWith(
      passwordHash: BCrypt.hashpw(newPassword, BCrypt.gensalt()),
      updatedAt: DateTime.now(),
    );
  }

  User revokeSession(String sessionId) {
    return copyWith(
      sessions: {...sessions.where((e) => e.id != sessionId)},
      updatedAt: DateTime.now(),
    );
  }

  User addSession(AuthSession session) {
    return copyWith(
      sessions: {session, ...sessions.where((e) => e.id != session.id)},
      updatedAt: DateTime.now(),
    );
  }

  User verifyEmail() {
    return copyWith(emailVerified: true);
  }

  User refreshSession({
    required String token,
    required String ip,
    required String deviceInfo,
  }) {
    final AuthSession? session = sessions.firstWhereOrNull(
      (e) => e.refreshToken == token,
    );

    if (session == null) {
      throw InvalidSessionTokenException();
    }

    final AuthSession updatedSession = session.refresh(
      token: token,
      ip: ip,
      deviceInfo: deviceInfo,
    );

    return copyWith(
      sessions: {updatedSession, ...sessions.where((e) => e.id != session.id)},
      updatedAt: DateTime.now(),
    );
  }
}
