import 'dart:io';

import 'package:dle_server/kernel/application/ports/uploads_storage_port.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;

@LazySingleton(as: UploadsStoragePort)
class LocalUploadsStorage implements UploadsStoragePort {
  const LocalUploadsStorage({
    @Named('uploadsBaseDirectory') required this.basePath,
  });

  final String basePath; // Base directory for saving files (e.g., 'uploads')

  @override
  Future<void> save({
    required String id,
    required String mimeType,
    required List<int> bytes,
  }) async {
    // Validate MIME type (only images are supported)
    final category = _getCategory(mimeType);

    // Create a directory structure: basePath/images/
    final imagesDir = Directory(path.join(basePath, category));
    if (!imagesDir.existsSync()) {
      await imagesDir.create(recursive: true);
    }

    // Generate a filename: id.extension (e.g., upload123.jpg)
    final fileName = '$id${_getFileExtension(mimeType)}';
    final filePath = path.join(imagesDir.path, fileName);

    // Save the file
    final file = File(filePath);
    await file.writeAsBytes(bytes);
  }

  @override
  Future<void> delete({required String id, required String mimeType}) async {
    // Validate MIME type and get category
    final category = _getCategory(mimeType);

    // Construct the file path: basePath/images/id.extension
    final filePath = path.join(
      basePath,
      category,
      '$id${_getFileExtension(mimeType)}',
    );

    // Delete the file if it exists
    final file = File(filePath);
    if (file.existsSync()) {
      await file.delete();
    }
  }

  @override
  Future<List<int>?> find({
    required String id,
    required String mimeType,
  }) async {
    // Validate MIME type and get category
    final category = _getCategory(mimeType);

    // Construct the file path: basePath/images/id.extension
    final filePath = path.join(
      basePath,
      category,
      '$id${_getFileExtension(mimeType)}',
    );

    // Return the file bytes if it exists, otherwise null
    final file = File(filePath);
    if (file.existsSync()) {
      return file.readAsBytes();
    }
    return null;
  }

  // Helper method to determine the category (subdirectory) based on MIME type
  String _getCategory(String mimeType) {
    switch (mimeType.toLowerCase()) {
      case 'image/jpeg':
      case 'image/jpg':
      case 'image/png':
        return 'images';
      default:
        throw UnsupportedError(
          'MIME type $mimeType is not supported. Only image types are allowed.',
        );
    }
  }

  // Helper method to determine file extension based on MIME type
  String _getFileExtension(String mimeType) {
    switch (mimeType.toLowerCase()) {
      case 'image/jpeg':
      case 'image/jpg':
        return '.jpg';
      case 'image/png':
        return '.png';
      default:
        throw UnsupportedError('MIME type $mimeType is not supported.');
    }
  }
}
