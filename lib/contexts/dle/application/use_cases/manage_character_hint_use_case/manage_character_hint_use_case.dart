import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/character_hint_updated.dart';
import 'package:dle_server/contexts/dle/domain/value_objects/hint_value/hint_value.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_character_hint_use_case.freezed.dart';

part 'manage_character_hint_use_case.g.dart';

@freezed
class ManageCharacterHintParams with _$ManageCharacterHintParams {
  const factory ManageCharacterHintParams({
    required String userId,
    required String hintId,
    required String dleId,
    required String characterId,
    required dynamic value,
  }) = _ManageCharacterHintParams;

  factory ManageCharacterHintParams.fromJson(Map<String, dynamic> json) =>
      _$ManageCharacterHintParamsFromJson(json);
}

@lazySingleton
class ManageCharacterHintUseCase
    implements UseCase<Dle, ManageCharacterHintParams> {
  const ManageCharacterHintUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;

  @override
  Future<Dle> call(ManageCharacterHintParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageHints = dle.userCanManageDle(params.userId);

    if (!canManageHints) {
      throw EditorPermissionsException();
    }

    final Hint? hint = dle.hints.firstWhereOrNull((e) => e.id == params.hintId);

    if (hint == null) {
      throw HintNotFoundException();
    }

    final Character? character = dle.characters.firstWhereOrNull(
      (e) => e.id == params.characterId,
    );

    if (character == null) {
      throw CharacterNotFoundException();
    }

    CharacterHint? characterHint = dle.characterHints.firstWhereOrNull(
      (e) => e.hintId == params.hintId && e.characterId == params.characterId,
    );

    Dle updatedDle = dle;

    bool isDeletionUpdate = false;

    if (params.value != null && characterHint == null) {
      hint.checkValue(params.value);

      characterHint = CharacterHint.create(
        hintId: params.hintId,
        characterId: params.characterId,
        value: HintValue(type: hint.type, data: params.value),
      );

      updatedDle = updatedDle.addCharacterHint(characterHint);
    } else if (params.value != null && characterHint != null) {
      hint.checkValue(params.value);

      characterHint = characterHint.edit(
        value: HintValue(type: hint.type, data: params.value),
      );

      updatedDle = updatedDle.editCharacterHint(characterHint);
    } else if (params.value == null && characterHint != null) {
      updatedDle = updatedDle.removeCharacterHint(characterHint.id);
      isDeletionUpdate = true;
    } else {
      throw CharacterHintNotFoundException();
    }

    await repository.save(
      updatedDle,
      overrideAssets: false,
      overrideEditors: false,
      overrideCharacters: false,
    );

    eventBus.publish(
      CharacterHintUpdatedEvent(
        dle: updatedDle,
        isDeletionUpdate: isDeletionUpdate,
        changedCharacterHints: [characterHint],
      ),
    );
    return updatedDle;
  }
}
