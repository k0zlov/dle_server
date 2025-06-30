import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/hints_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_hint_use_case.freezed.dart';

part 'edit_hint_use_case.g.dart';

@freezed
class EditHintParams with _$EditHintParams {
  const factory EditHintParams({
    required String userId,
    required String dleId,
    required String hintId,
    String? title,
    String? description,
    int? requiredTries,
    bool? isHidden,
    HintType? type,
  }) = _EditHintParams;

  factory EditHintParams.fromJson(Map<String, dynamic> json) =>
      _$EditHintParamsFromJson(json);
}

@lazySingleton
class EditHintUseCase implements UseCase<Dle, EditHintParams> {
  const EditHintUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<Dle> call(EditHintParams params) async {
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

    final Hint updatedHint = hint.edit(
      title: params.title,
      description: params.description,
      type: params.type,
      isHidden: params.isHidden,
      requiredTries: params.requiredTries,
    );

    final Dle updatedDle = dle.editHint(updatedHint);

    await repository.save(
      updatedDle,
      overrideAssets: false,
      overrideEditors: false,
      overrideCharacters: false,
    );
    eventBus.publish(
      HintsUpdatedEvent(
        dle: updatedDle,
        changedHints: [updatedHint],
        changedCharacterHints: [
          ...updatedDle.characterHints.where((e) => e.hintId == updatedHint.id),
        ],
      ),
    );

    return updatedDle;
  }
}
