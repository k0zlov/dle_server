import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_character_use_case.freezed.dart';

part 'edit_character_use_case.g.dart';

@freezed
class EditCharacterParams with _$EditCharacterParams {
  const factory EditCharacterParams({
    required String userId,
    required String dleId,
    required String characterId,
    String? name,
    bool? isHidden,
    List<String>? aliases,
    String? assetId,
    @Default(false) bool deleteImage,
  }) = _EditCharacterParams;

  factory EditCharacterParams.fromJson(Map<String, dynamic> json) =>
      _$EditCharacterParamsFromJson(json);
}

@lazySingleton
class EditCharacterUseCase implements UseCase<Dle, EditCharacterParams> {
  const EditCharacterUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;

  @override
  Future<Dle> call(EditCharacterParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageCharacters = dle.userCanManageDle(params.userId);

    if (!canManageCharacters) {
      throw EditorPermissionsException();
    }

    final Character? character = dle.characters.firstWhereOrNull(
      (e) => e.id == params.characterId,
    );

    if (character == null) {
      throw CharacterNotFoundException();
    }

    final Character editedCharacter = character.edit(
      name: params.name,
      aliases: params.aliases,
      isHidden: params.isHidden,
      assetId: params.deleteImage ? null : params.assetId,
    );

    final Dle updatedDle = dle.editCharacter(editedCharacter);
    await repository.save(
      updatedDle,
      overrideHints: false,
      overrideEditors: false,
      overrideAssets: false,
    );

    eventBus.publish(DleUpdatedEvent(dle: updatedDle));
    return updatedDle;
  }
}
