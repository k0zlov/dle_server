import 'package:dle_server/contexts/auth/application/ports/password_reset_tokens_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/password_reset_token/password_reset_token.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PasswordResetTokensRepositoryPort)
class PasswordresetTokensRepositoryDrift
    implements PasswordResetTokensRepositoryPort {
  const PasswordresetTokensRepositoryDrift({required this.db});

  final Database db;

  Insertable<PasswordResetToken> mapToken(PasswordResetToken token) {
    return PasswordResetTokensCompanion(
      id: Value(token.id),
      userId: Value(token.userId),
      isUsed: Value(token.isUsed),
      expiresAt: Value(token.expiresAt),
      updatedAt: Value(token.updatedAt),
      createdAt: Value(token.createdAt),
    );
  }

  @override
  Future<PasswordResetToken?> find({required String id}) {
    return db.passwordResetTokens.getOrNull(
      (tbl) => tbl.id.equals(UuidValue.fromString(id)),
    );
  }

  @override
  Future<List<PasswordResetToken>> getUserTokens({required String userId}) {
    return db.passwordResetTokens.getWhere(
      (tbl) => tbl.userId.equals(UuidValue.fromString(userId)),
    );
  }

  @override
  Future<void> save(PasswordResetToken token) {
    return db.passwordResetTokens.insertOnConflictUpdate(mapToken(token));
  }
}
