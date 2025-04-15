import 'package:dle_server/kernel/application/ports/uploads_repository_port.dart';
import 'package:dle_server/kernel/application/ports/uploads_storage_port.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_upload_use_case.freezed.dart';

part 'save_upload_use_case.g.dart';

@freezed
class SaveUploadParams with _$SaveUploadParams {
  const factory SaveUploadParams({
    required List<int> bytes,
    required String mimeType,
    required String userId,
  }) = _SaveUploadParams;

  factory SaveUploadParams.fromJson(Map<String, dynamic> json) =>
      _$SaveUploadParamsFromJson(json);
}

@lazySingleton
class SaveUploadUseCase implements UseCase<Upload, SaveUploadParams> {
  const SaveUploadUseCase({required this.storage, required this.repository});

  final UploadsStoragePort storage;
  final UploadsRepositoryPort repository;

  @override
  Future<Upload> call(SaveUploadParams params) async {
    final Upload upload = Upload.create(
      uploaderId: params.userId,
      mimeType: params.mimeType,
      size: params.bytes.length,
    );

    await repository.save(upload);
    await storage.save(
      id: upload.id,
      mimeType: upload.mimeType,
      bytes: params.bytes,
    );

    return upload;
  }
}
