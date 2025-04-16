import 'package:dle_server/kernel/application/ports/uploads_repository_port.dart';
import 'package:dle_server/kernel/application/ports/uploads_storage_port.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_upload_use_case.freezed.dart';

part 'delete_upload_use_case.g.dart';

@freezed
class DeleteUploadParams with _$DeleteUploadParams {
  const factory DeleteUploadParams({required String uploadId}) =
      _DeleteUploadParams;

  factory DeleteUploadParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteUploadParamsFromJson(json);
}

@lazySingleton
class DeleteUploadUseCase implements UseCase<void, DeleteUploadParams> {
  const DeleteUploadUseCase({required this.storage, required this.repository});

  final UploadsStoragePort storage;
  final UploadsRepositoryPort repository;

  @override
  Future<void> call(DeleteUploadParams params) async {
    final Upload? upload = await repository.find(params.uploadId);

    if (upload == null) return;

    await storage.delete(id: upload.id, mimeType: upload.mimeType);
  }
}
