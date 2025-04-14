import 'package:dle_server/kernel/domain/entities/upload/upload.dart';

abstract interface class UploadsRepositoryPort {
  Future<Upload?> find(String uploadId);

  Future<void> save(Upload upload);

  Future<void> delete(String uploadId);
}
