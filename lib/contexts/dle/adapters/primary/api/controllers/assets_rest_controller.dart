import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/create_asset_use_case/create_asset_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_asset_use_case/edit_asset_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/remove_asset_use_case/remove_asset_use_case.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/infrastructure/extensions/form_data_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class AssetsRestController {
  const AssetsRestController({
    required this.mapper,
    required this.createAssetUseCase,
    required this.editAssetUseCase,
    required this.removeAssetUseCase,
  });

  final DleExceptionsMapper mapper;

  final CreateAssetUseCase createAssetUseCase;
  final EditAssetUseCase editAssetUseCase;
  final RemoveAssetUseCase removeAssetUseCase;

  Future<Response> create(Request req) async {
    final String userId = req.payload.userId;
    final String dleId = req.url.pathSegments.first;

    final FormData formData = await req.formData();

    final UploadedFile? image = formData.files['image'];

    final List<int>? imageBytes = await image?.readAsBytes();

    final String? mimeType = image?.contentType.mimeType;

    final Map<String, dynamic> json = formData.getJson();

    final CreateAssetParams params = CreateAssetParams.fromJson(
      json.copyWith({
        'userId': userId,
        'dleId': dleId,
        'bytes': imageBytes,
        'mimeType': mimeType,
      }),
    );

    try {
      final Dle dle = await createAssetUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> edit(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String assetId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final FormData formData = await req.formData();

    final UploadedFile? image = formData.files['image'];

    final List<int>? bytes = await image?.readAsBytes();

    final String? mimeType = image?.contentType.mimeType;

    final Map<String, dynamic> json = formData.getJson();

    final EditAssetParams params = EditAssetParams.fromJson(
      json.copyWith({
        'userId': userId,
        'dleId': dleId,
        'assetId': assetId,
        'mimeType': mimeType,
        'bytes': bytes,
      }),
    );

    try {
      final Dle dle = await editAssetUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> remove(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String assetId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final RemoveAssetParams params = RemoveAssetParams.fromJson(
      req.data.copyWith({'userId': userId, 'dleId': dleId, 'assetId': assetId}),
    );

    try {
      final Dle dle = await removeAssetUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }
}
