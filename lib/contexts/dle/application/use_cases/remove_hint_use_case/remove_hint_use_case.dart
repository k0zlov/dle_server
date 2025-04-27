import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remove_hint_use_case.freezed.dart';

part 'remove_hint_use_case.g.dart';

@freezed
class RemoveHintParams with _$RemoveHintParams {
  const factory RemoveHintParams({
    required String userId,
    required String dleId,
    required String hintId,
  }) = _RemoveHintParams;

  factory RemoveHintParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveHintParamsFromJson(json);
}

@lazySingleton
class RemoveHintUseCase implements UseCase<Dle, RemoveHintParams> {
  const RemoveHintUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<Dle> call(RemoveHintParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageHints = dle.userCanManageHints(params.userId);

    if (!canManageHints) {
      throw EditorPermissionsException();
    }

    final Hint? hint = dle.hints.firstWhereOrNull((e) => e.id == params.hintId);

    if (hint == null) {
      throw HintNotFoundException();
    }

    final Dle updatedDle = dle.removeHint(params.hintId);
    await repository.save(
      updatedDle,
      overrideCharacters: false,
      overrideEditors: false,
      overrideAssets: false,
    );

    eventBus.publish(DleUpdatedEvent(dle: updatedDle));
    return updatedDle;
  }
}
