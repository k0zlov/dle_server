import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_dle_use_case.freezed.dart';

part 'edit_dle_use_case.g.dart';

@freezed
class EditDleParams with _$EditDleParams {
  const factory EditDleParams({
    required String dleId,
    required String userId,
    bool? isPrivate,
    String? title,
    String? description,
  }) = _EditDleParams;

  factory EditDleParams.fromJson(Map<String, dynamic> json) =>
      _$EditDleParamsFromJson(json);
}

@lazySingleton
class EditDleUseCase implements UseCase<Dle, EditDleParams> {
  const EditDleUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<Dle> call(EditDleParams params) async {
    final Dle? foundDle = await repository.find(params.dleId);

    if (foundDle == null) {
      throw DleNotFoundException();
    }

    final DleEditor? foundEditor = foundDle.editors.firstWhereOrNull(
      (e) => e.userId == params.userId,
    );

    if (foundEditor == null) {
      throw EditorNotFoundException();
    }

    if (foundEditor.role.isEditor) {
      throw EditorPermissionsException();
    }

    final Dle dle = foundDle.edit(
      isPrivate: params.isPrivate,
      title: params.title,
      description: params.description,
    );

    await repository.save(
      dle,
      overrideAssets: false,
      overrideEditors: false,
      overrideCharacters: false,
      overrideHints: false,
    );
    eventBus.publish(DleUpdatedEvent(dle: dle));
    return dle;
  }
}
