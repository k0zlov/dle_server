import 'package:dart_mappable/dart_mappable.dart';
import 'package:dartz/dartz.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'upload.mapper.dart';

enum UploadError { fileIsTooBig, invalidMimeType }

@MappableClass()
class Upload extends Entity with UploadMappable {
  Upload({
    super.id,
    required this.uploaderId,
    required this.mimeType,
    required this.size,
    required this.updatedAt,
    required this.createdAt,
  });

  Upload.create({
    required this.uploaderId,
    required this.mimeType,
    required this.size,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String? uploaderId;
  final String mimeType;
  final int size;
  final DateTime updatedAt;
  final DateTime createdAt;

  Upload update({required int newSize}) {
    return copyWith(size: newSize, updatedAt: DateTime.now());
  }

  Either<UploadError, void> validate() {
    const maxSize = 20 * 1024 * 1024;

    const List<String> supportedMimeTypes = [
      'image/jpeg',
      'image/png',
      'image/jpg',
    ];

    if (!supportedMimeTypes.contains(mimeType)) {
      return const Left(UploadError.invalidMimeType);
    }

    if (size >= maxSize) {
      return const Left(UploadError.fileIsTooBig);
    }
    return const Right(null);
  }
}
