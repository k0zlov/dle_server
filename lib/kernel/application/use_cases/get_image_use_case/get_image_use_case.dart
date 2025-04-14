import 'package:dartz/dartz.dart';
import 'package:dle_server/kernel/application/ports/uploads_repository_port.dart';
import 'package:dle_server/kernel/application/ports/uploads_storage_port.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:dle_server/kernel/infrastructure/services/image/image_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_image_use_case.freezed.dart';

part 'get_image_use_case.g.dart';

// Future<Response> handler(Request req) async {
//   final formData = await req.formData();
//
//   final image = formData.files['image'];
//
//   await image?.readAsBytes();
//   image?.contentType.mimeType;
// }

@freezed
class GetImageParams with _$GetImageParams {
  const factory GetImageParams({
    required String uploadId,
    ImageDimensions? dimensions,
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
      return const Left(GetImageError.uploadNotFound);
    }

    List<int>? bytes = await storage.find(
      id: upload.id,
      mimeType: upload.mimeType,
    );

    if (bytes == null) {
      return const Left(GetImageError.fileNotFound);
    }

    const List<String> imageMimeTypes = [
      'image/png',
      'image/jpeg',
      'image/jpg',
    ];

    if (!imageMimeTypes.contains(upload.mimeType)) {
      return const Left(GetImageError.wrongMimeType);
    }

    if (params.dimensions != null) {
      bytes = await imageService.resize(
        bytes: bytes,
        mimeType: upload.mimeType,
        width: params.dimensions!.width,
        height: params.dimensions!.height,
      );
    }

    return MapEntry(upload, bytes);
  }
}
