import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/delete_upload_use_case/delete_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remove_character_use_case.freezed.dart';

part 'remove_character_use_case.g.dart';

@freezed
class RemoveCharacterParams with _$RemoveCharacterParams {
  const factory RemoveCharacterParams({
    required String userId,
    required String dleId,
    required String characterId,
  }) = _RemoveCharacterParams;

  factory RemoveCharacterParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveCharacterParamsFromJson(json);
}

@lazySingleton
class RemoveCharacterUseCase implements UseCase<Dle, RemoveCharacterParams> {
  const RemoveCharacterUseCase({
    required this.repository,
    required this.deleteUploadUseCase,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;
  final DeleteUploadUseCase deleteUploadUseCase;

  @override
  Future<Dle> call(RemoveCharacterParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageCharacters = dle.userCanManageCharacters(params.userId);

    if (!canManageCharacters) {
      throw EditorPermissionsException();
    }

    final Character? character = dle.characters.firstWhereOrNull(
      (e) => e.id == params.characterId,
    );

    if (character == null) {
      throw CharacterNotFoundException();
    }

    if (character.imageId != null) {
      await deleteUploadUseCase(
        DeleteUploadParams(uploadId: character.imageId!),
      );
    }

    final Dle updatedDle = dle.removeCharacter(params.characterId);
    await repository.save(
      updatedDle,
      overrideHints: false,
      overrideAssets: false,
      overrideEditors: false,
    );

    eventBus.publish(DleUpdatedEvent(dle: updatedDle));

    return updatedDle;
  }
}
