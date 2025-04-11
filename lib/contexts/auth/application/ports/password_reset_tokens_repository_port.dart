import 'package:dle_server/contexts/auth/domain/entities/password_reset_token/password_reset_token.dart';

abstract interface class PasswordResetTokensRepositoryPort {
  Future<PasswordResetToken?> find({required String id});

  Future<List<PasswordResetToken>> getUserTokens({required String userId});

  Future<void> save(PasswordResetToken token);
}
