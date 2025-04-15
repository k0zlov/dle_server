import 'package:dle_server/kernel/application/exceptions/upload_exceptions.dart';
import 'package:dle_server/kernel/application/ports/uploads_repository_port.dart';
import 'package:dle_server/kernel/application/ports/uploads_storage_port.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:dle_server/kernel/infrastructure/services/image/image_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_image_use_case.freezed.dart';

part 'get_image_use_case.g.dart';

@freezed
class GetImageParams with _$GetImageParams {
  const factory GetImageParams({
    required String uploadId,
    int? height,
    int? width,
  }) = _GetImageParams;

  factory GetImageParams.fromJson(Map<String, dynamic> json) =>
      _$GetImageParamsFromJson(json);
}

@lazySingleton
class GetImageUseCase
    implements UseCase<MapEntry<Upload, List<int>>, GetImageParams> {
  const GetImageUseCase({
    required this.storage,
    required this.repository,
    required this.imageService,
  });

  final UploadsStoragePort storage;
  final UploadsRepositoryPort repository;
  final ImageService imageService;

  @override
  Future<MapEntry<Upload, List<int>>> call(GetImageParams params) async {
    final Upload? upload = await repository.find(params.uploadId);

    if (upload == null) {
      throw UploadNotFoundException();
    }

    List<int>? bytes = await storage.find(
      id: upload.id,
      mimeType: upload.mimeType,
    );

    if (bytes == null) {
      throw FileNotFoundException();
    }

    const List<String> imageMimeTypes = [
      'image/png',
      'image/jpeg',
      'image/jpg',
    ];

    if (!imageMimeTypes.contains(upload.mimeType)) {
      throw InvalidMimeTypeException();
    }

    if (params.width != null || params.height != null) {
      bytes = await imageService.resize(
        bytes: bytes,
        mimeType: upload.mimeType,
        width: params.width,
        height: params.height,
      );
    }

    return MapEntry(upload, bytes);
  }
}
