import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';

abstract interface class EmailCodesRepositoryPort {
  Future<EmailCode?> findByCode({required String userId, required String code});

  Future<List<EmailCode>> getUserCodes({required String userId});

  Future<void> save(EmailCode code);
}
