import 'package:dle_server/kernel/application/ports/uploads_repository_port.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UploadsRepositoryPort)
class UploadsRepositoryDrift implements UploadsRepositoryPort {
  const UploadsRepositoryDrift({required this.db});

  final Database db;

  Insertable<Upload> mapUpload(Upload upload) {
    return UploadsCompanion(
      id: Value(upload.id),
      uploaderId: Value(upload.uploaderId),
      mimeType: Value(upload.mimeType),
      size: Value(upload.size),
      updatedAt: Value(upload.updatedAt),
      createdAt: Value(upload.createdAt),
    );
  }

  @override
  Future<void> delete(String uploadId) {
    return db.uploads.deleteWhere(
      (tbl) => tbl.id.equals(UuidValue.fromString(uploadId)),
    );
  }

  @override
  Future<Upload?> find(String uploadId) {
    return db.uploads.getOrNull(
      (tbl) => tbl.id.equals(UuidValue.fromString(uploadId)),
    );
  }

  @override
  Future<void> save(Upload upload) {
    return db.uploads.insertOnConflictUpdate(mapUpload(upload));
  }
}
