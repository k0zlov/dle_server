import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class AssetsRestController {
  // Future<Response> create(Request req) async {
  //   final String userId = req.payload.userId;
  //   final String dleId = req.url.pathSegments.first;
  //
  //   final FormData formData = await req.formData();
  //
  //   final UploadedFile? image = formData.files['image'];
  //
  //   final List<int>? imageBytes = await image?.readAsBytes();
  //
  //   final String? mimeType = image?.contentType.mimeType;
  //
  //   final Map<String, dynamic> json = formData.getJson();
  //
  //   final CreateCharacterParams params = CreateCharacterParams.fromJson(
  //     json.copyWith({
  //       'userId': userId,
  //       'dleId': dleId,
  //       'imageBytes': imageBytes,
  //       'mimeType': mimeType,
  //     }),
  //   );
  // }
}
