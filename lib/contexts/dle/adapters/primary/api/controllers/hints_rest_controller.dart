import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/create_hint_use_case/create_hint_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_hint_use_case/edit_hint_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/manage_character_hint_use_case/manage_character_hint_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/remove_hint_use_case/remove_hint_use_case.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class HintsRestController {
  const HintsRestController({
    required this.mapper,
    required this.createHintUseCase,
    required this.editHintUseCase,
    required this.removeHintUseCase,
    required this.manageCharacterHintUseCase,
  });

  final DleExceptionsMapper mapper;
  final CreateHintUseCase createHintUseCase;
  final EditHintUseCase editHintUseCase;
  final RemoveHintUseCase removeHintUseCase;
  final ManageCharacterHintUseCase manageCharacterHintUseCase;

  Future<Response> create(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String userId = req.payload.userId;

    final CreateHintParams params = CreateHintParams.fromJson(
      req.data.copyWith({'userId': userId, 'dleId': dleId}),
    );

    try {
      final Dle dle = await createHintUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> edit(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String hintId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final EditHintParams params = EditHintParams.fromJson(
      req.data.copyWith({'userId': userId, 'dleId': dleId, 'hintId': hintId}),
    );

    try {
      final Dle dle = await editHintUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> remove(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String hintId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final RemoveHintParams params = RemoveHintParams(
      userId: userId,
      dleId: dleId,
      hintId: hintId,
    );

    try {
      final Dle dle = await removeHintUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> manageCharacterHint(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String hintId = req.url.pathSegments[2];
    final String characterId = req.url.pathSegments.last;
    final String userId = req.payload.userId;

    final ManageCharacterHintParams params = ManageCharacterHintParams.fromJson(
      req.data.copyWith({
        'dleId': dleId,
        'hintId': hintId,
        'characterId': characterId,
        'userId': userId,
      }),
    );

    try {
      final Dle dle = await manageCharacterHintUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }
}
