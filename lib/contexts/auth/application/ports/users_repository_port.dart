import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';

abstract interface class UsersRepositoryPort {
  /// Users
  Future<void> saveUser(
    User user, {
    bool overrideSessions = false,
    bool overrideEmailCodes = false,
  });

  Future<User?> findUser({
    String? id,
    String? email,
    bool includeEmailCodes = false,
    bool includeSessions = false,
  });

  /// Sessions
  Future<AuthSession?> findSession({String? id, String? token});

  Future<void> updateSession(AuthSession session);

  // Future<void> deleteSession(int id);

  /// Email Verification Codes
  Future<void> saveEmailCode(EmailCode emailCode);
}
