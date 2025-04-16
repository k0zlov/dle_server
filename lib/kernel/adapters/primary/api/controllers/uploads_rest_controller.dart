import 'package:dle_server/kernel/adapters/primary/api/exceptions/uploads_exceptions_mapper.dart';
import 'package:dle_server/kernel/application/use_cases/get_image_use_case/get_image_use_case.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class UploadsRestController {
  const UploadsRestController({
    required this.getImageUseCase,
    required this.mapper,
  });

  final GetImageUseCase getImageUseCase;
  final UploadsExceptionsMapper mapper;

  Future<Response> getImage(Request req) async {
    final GetImageParams params = GetImageParams.fromJson(
      req.data.copyWith({'uploadId': req.uri.pathSegments.last}),
    );

    try {
      final entry = await getImageUseCase(params);

      return Response.bytes(
        body: entry.value,
        headers: {'Content-Type': entry.key.mimeType},
      );
    } catch (e) {
      throw mapper(e);
    }
  }
}
