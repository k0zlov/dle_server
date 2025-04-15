import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';
import 'package:dle_server/kernel/domain/exceptions/upload_exceptions.dart';

part 'upload.mapper.dart';

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
       createdAt = DateTime.now() {
    validate();
  }

  final String? uploaderId;
  final String mimeType;
  final int size;
  final DateTime updatedAt;
  final DateTime createdAt;

  Upload update({required int newSize}) {
    return copyWith(size: newSize, updatedAt: DateTime.now());
  }

  void validate() {
    const maxSize = 20 * 1024 * 1024;

    if (size >= maxSize) {
      throw FileTooBigException();
    }
  }
}
