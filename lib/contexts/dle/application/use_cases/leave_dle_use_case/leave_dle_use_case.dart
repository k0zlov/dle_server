import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/events/editor_left.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'leave_dle_use_case.freezed.dart';

part 'leave_dle_use_case.g.dart';

@freezed
class LeaveDleParams with _$LeaveDleParams {
  const factory LeaveDleParams({
    required String userId,
    required String dleId,
  }) = _LeaveDleParams;

  factory LeaveDleParams.fromJson(Map<String, dynamic> json) =>
      _$LeaveDleParamsFromJson(json);
}

@lazySingleton
class LeaveDleUseCase implements UseCase<void, LeaveDleParams> {
  const LeaveDleUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<void> call(LeaveDleParams params) async {
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

    if (editor.role.isOwner) {
      throw OwnerCannotLeaveDleException();
    }

    final Dle updatedDle = dle.kickEditor(params.userId);
    await repository.save(
      updatedDle,
      overrideCharacters: false,
      overrideAssets: false,
      overrideHints: false,
    );
    eventBus.publish(
      EditorLeftEvent(dle: updatedDle, editorUserId: editor.userId),
    );
  }
}
