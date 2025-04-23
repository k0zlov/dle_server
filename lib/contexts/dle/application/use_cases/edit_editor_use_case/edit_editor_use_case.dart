import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dles_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_editor_use_case.freezed.dart';

part 'edit_editor_use_case.g.dart';

@freezed
class EditEditorParams with _$EditEditorParams {
  const factory EditEditorParams({
    required String dleId,
    required String userId,
    required String editorUserId,
    required DleEditorRole role,
  }) = _EditEditorParams;

  factory EditEditorParams.fromJson(Map<String, dynamic> json) =>
      _$EditEditorParamsFromJson(json);
}

@lazySingleton
class EditEditorUseCase implements UseCase<Dle, EditEditorParams> {
  const EditEditorUseCase({required this.repository});

  final DleRepositoryPort repository;

  @override
  Future<Dle> call(EditEditorParams params) async {
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

    if (!editor.role.isOwner) {
      throw EditorPermissionsException();
    }

    final DleEditor? targetEditor = dle.editors.firstWhereOrNull(
      (e) => e.userId == params.editorUserId,
    );

    if (targetEditor == null) {
      throw EditorNotFoundException();
    }

    if (params.role.isOwner) {
      throw RoleUpgradeNotAllowedException();
    }

    final DleEditor updatedEditor = targetEditor.editRole(params.role);
    final Dle updatedDle = dle.updateEditor(updatedEditor);

    await repository.save(updatedDle);

    return updatedDle;
  }
}
