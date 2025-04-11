import 'package:dle_server/contexts/auth/application/ports/email_codes_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EmailCodesRepositoryPort)
class EmailCodesRepositoryDrift implements EmailCodesRepositoryPort {
  const EmailCodesRepositoryDrift({required this.db});

  final Database db;

  Insertable<EmailCode> mapEmailCode(EmailCode code) {
    return EmailVerificationCodesCompanion(
      id: Value(code.id),
      userId: Value(code.userId),
      code: Value(code.code),
      isSuccess: Value(code.isSuccess),
      expiresAt: Value(code.expiresAt),
      updatedAt: Value(code.updatedAt),
      createdAt: Value(code.createdAt),
    );
  }

  @override
  Future<EmailCode?> findByCode({
    required String userId,
    required String code,
  }) {
    return db.emailVerificationCodes.getOrNull(
      (tbl) =>
          tbl.userId.equals(UuidValue.fromString(userId)) &
          tbl.code.equals(code),
    );
  }

  @override
  Future<void> save(EmailCode code) {
    return db.emailVerificationCodes.insertOnConflictUpdate(mapEmailCode(code));
  }

  @override
  Future<List<EmailCode>> getUserCodes({required String userId}) {
    return db.emailVerificationCodes.getWhere(
      (tbl) => tbl.userId.equals(UuidValue.fromString(userId)),
    );
  }
}
