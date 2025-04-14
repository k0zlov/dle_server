import 'dart:typed_data';

import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';

typedef ImageDimensions = ({int width, int height});

abstract interface class ImageService {
  /// Resizes an image to the specified width and height.
  ///
  /// - [bytes]: The raw image data as a byte array.
  /// - [mimeType]: The MIME type of the image (e.g., "image/jpeg").
  /// - [width]: The target width in pixels.
  /// - [height]: The target height in pixels.
  /// Returns the resized image as a byte array in the same format (e.g., JPEG, PNG).
  Future<List<int>> resize({
    required List<int> bytes,
    required String mimeType,
    required int width,
    required int height,
  });

  /// Gets the dimensions (width and height) of an image.
  ///
  /// - [bytes]: The raw image data as a byte array.
  /// Returns a tuple of (width, height) in pixels, or throws if the image can't be processed.
  Future<ImageDimensions> getDimensions({required List<int> bytes});
}

@LazySingleton(as: ImageService)
class ImageServiceImpl implements ImageService {
  const ImageServiceImpl();

  @override
  Future<ImageDimensions> getDimensions({required List<int> bytes}) async {
    try {
      // Decode the image from bytes
      final image = img.decodeImage(Uint8List.fromList(bytes));
      if (image == null) {
        throw Exception('Failed to decode image');
      }

      // Return the dimensions as a tuple
      return (width: image.width, height: image.height);
    } catch (e) {
      throw Exception('Error getting image dimensions: $e');
    }
  }

  @override
  Future<List<int>> resize({
    required List<int> bytes,
    required String mimeType,
    required int width,
    required int height,
  }) async {
    try {
      // Decode the image from bytes
      final image = img.decodeImage(Uint8List.fromList(bytes));
      if (image == null) {
        throw Exception('Failed to decode image');
      }

      // Resize the image
      final resizedImage = img.copyResize(
        image,
        width: width,
        height: height,
        interpolation: img.Interpolation.average,
      );

      // Encode the resized image based on the MIME type
      switch (mimeType.toLowerCase()) {
        case 'image/png':
          return img.encodePng(resizedImage);
        case 'image/jpeg':
        case 'image/jpg':
          return img.encodeJpg(
            resizedImage,
            quality: 85,
          ); // JPEG with 85% quality
        default:
          throw UnsupportedError('MIME type $mimeType is not supported');
      }
    } catch (e) {
      throw Exception('Error resizing image: $e');
    }
  }
}
