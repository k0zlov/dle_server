import 'package:bcrypt/bcrypt.dart';
import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
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
    this.emailCodes = const <EmailCode>{},
  });

  User.create({
    required this.email,
    required String password,
    this.sessions = const <AuthSession>{},
    this.emailCodes = const <EmailCode>{},
  }) : emailVerified = false,
       passwordHash = BCrypt.hashpw(password, BCrypt.gensalt()),
       updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String email;

  final String passwordHash;

  final bool emailVerified;

  final Set<AuthSession> sessions;
  final Set<EmailCode> emailCodes;

  final DateTime updatedAt;
  final DateTime createdAt;

  User update({String? email, String? password}) {
    return copyWith(
      email: email,
      updatedAt: DateTime.now(),
      passwordHash:
          password == null ? null : BCrypt.hashpw(password, BCrypt.gensalt()),
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
      sessions: {session, ...sessions},
      updatedAt: DateTime.now(),
    );
  }

  Either<RefreshSessionError, User> refreshSession({
    required String token,
    required String ip,
    required String deviceInfo,
  }) {
    final AuthSession? session = sessions.firstWhereOrNull(
      (e) => e.refreshToken == token,
    );

    if (session == null) {
      return const Left(RefreshSessionError.sessionNotFound);
    }

    return session
        .refresh(token: token, ip: ip, deviceInfo: deviceInfo)
        .fold(
          Left.new,
          (session) => Right(
            copyWith(
              sessions: {session, ...sessions},
              updatedAt: DateTime.now(),
            ),
          ),
        );
  }

  Either<EmailVerificationError, User> verifyEmail(String code) {
    if (emailVerified) {
      return const Left(EmailVerificationError.alreadyVerified);
    }

    final EmailCode? emailCode = emailCodes.firstWhereOrNull(
      (e) => e.code == code,
    );

    if (emailCode == null) {
      return const Left(EmailVerificationError.codeNotFound);
    }

    return emailCode
        .verify(code)
        .fold(
          Left.new,
          (code) => Right(
            copyWith(
              emailVerified: true,
              emailCodes: {code, ...emailCodes},
              updatedAt: DateTime.now(),
            ),
          ),
        );
  }
}
