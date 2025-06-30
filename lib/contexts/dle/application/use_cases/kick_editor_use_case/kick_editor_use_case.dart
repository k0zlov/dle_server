import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/editor_left.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'kick_editor_use_case.freezed.dart';

part 'kick_editor_use_case.g.dart';

@freezed
class KickEditorParams with _$KickEditorParams {
  const factory KickEditorParams({
    required String dleId,
    required String userId,
    required String editorUserId,
  }) = _KickEditorParams;

  factory KickEditorParams.fromJson(Map<String, dynamic> json) =>
      _$KickEditorParamsFromJson(json);
}

@lazySingleton
class KickEditorUseCase implements UseCase<Dle, KickEditorParams> {
  const KickEditorUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<Dle> call(KickEditorParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final DleEditor? editor = dle.editors.firstWhereOrNull(
      (e) => e.userId == params.userId,
    );

    if (editor == null) {
      throw EditorNotFoundException();
    }

    if (editor.role.isEditor) {
      throw EditorPermissionsException();
    }

    final DleEditor? targetEditor = dle.editors.firstWhereOrNull(
      (e) => e.userId == params.editorUserId,
    );

    if (targetEditor == null) {
      throw EditorNotFoundException();
    }

    if (targetEditor.role >= editor.role) {
      throw EditorPermissionsException();
    }

    final Dle updatedDle = dle.kickEditor(targetEditor.userId);
    await repository.save(
      updatedDle,
      overrideCharacters: false,
      overrideAssets: false,
      overrideHints: false,
    );
    eventBus.publish(
      EditorLeftEvent(dle: updatedDle, editorUserId: targetEditor.userId),
    );

    return updatedDle;
  }
}
