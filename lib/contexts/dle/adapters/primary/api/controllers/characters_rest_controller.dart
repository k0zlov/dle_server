import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/create_character_use_case/create_character_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_character_use_case/edit_character_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/remove_character_use_case/remove_character_use_case.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/infrastructure/extensions/form_data_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class CharactersRestController {
  const CharactersRestController({
    required this.createCharacterUseCase,
    required this.editCharacterUseCase,
    required this.removeCharacterUseCase,
    required this.mapper,
  });

  final CreateCharacterUseCase createCharacterUseCase;
  final EditCharacterUseCase editCharacterUseCase;
  final RemoveCharacterUseCase removeCharacterUseCase;

  final DleExceptionsMapper mapper;

  Future<Response> create(Request req) async {
    final String userId = req.payload.userId;
    final String dleId = req.url.pathSegments.first;

    final FormData formData = await req.formData();

    final UploadedFile? image = formData.files['image'];

    final List<int>? imageBytes = await image?.readAsBytes();

    final String? mimeType = image?.contentType.mimeType;

    final Map<String, dynamic> json = formData.getJson();

    final CreateCharacterParams params = CreateCharacterParams.fromJson(
      json.copyWith({
        'userId': userId,
        'dleId': dleId,
        'imageBytes': imageBytes,
        'mimeType': mimeType,
      }),
    );

    try {
      final Dle dle = await createCharacterUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> edit(Request req) async {
    final String userId = req.payload.userId;
    final String dleId = req.url.pathSegments.first;
    final String characterId = req.url.pathSegments.last;

    final FormData formData = await req.formData();

    final UploadedFile? image = formData.files['image'];

    final List<int>? imageBytes = await image?.readAsBytes();

    final String? mimeType = image?.contentType.mimeType;

    final Map<String, dynamic> json = formData.getJson();

    final EditCharacterParams params = EditCharacterParams.fromJson(
      json.copyWith({
        'userId': userId,
        'dleId': dleId,
        'imageBytes': imageBytes,
        'mimeType': mimeType,
        'characterId': characterId,
      }),
    );

    try {
      final Dle dle = await editCharacterUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> remove(Request req) async {
    final String userId = req.payload.userId;
    final String dleId = req.url.pathSegments.first;
    final String characterId = req.url.pathSegments.last;

    final RemoveCharacterParams params = RemoveCharacterParams(
      userId: userId,
      dleId: dleId,
      characterId: characterId,
    );

    try {
      final Dle dle = await removeCharacterUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }
}
