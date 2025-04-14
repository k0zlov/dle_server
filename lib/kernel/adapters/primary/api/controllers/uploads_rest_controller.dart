import 'package:dle_server/kernel/application/use_cases/get_image_use_case/get_image_use_case.dart';
import 'package:ruta/ruta.dart';

class UploadsRestController {
  const UploadsRestController({required this.getImageUseCase});

  final GetImageUseCase getImageUseCase;

  Future<Response> getImage(Request req) async {
    final GetImageParams params = GetImageParams.fromJson(req.data);

    final entryOrError = await getImageUseCase(params);

    return entryOrError.fold(
      (err) => switch (err) {
        GetImageError.uploadNotFound =>
          throw const ApiException.notFound('Upload not found.'),
        GetImageError.fileNotFound || GetImageError.wrongMimeType =>
          throw const ApiException.internalServerError('File not found.'),
      },
      (entry) {
        return Response.bytes(
          body: entry.value,
          headers: {'Content-Type': entry.key.mimeType},
        );
      },
    );
  }
}
