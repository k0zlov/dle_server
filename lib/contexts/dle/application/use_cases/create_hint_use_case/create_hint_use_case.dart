import 'dart:async';

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

part 'create_hint_use_case.freezed.dart';

part 'create_hint_use_case.g.dart';

@freezed
class CreateHintParams with _$CreateHintParams {
  const factory CreateHintParams({
    required String userId,
    required String dleId,
    required String title,
    required HintType type,
    required int requiredTries,
    bool? isHidden,
    @Default('') String description,
  }) = _CreateHintParams;

  factory CreateHintParams.fromJson(Map<String, dynamic> json) =>
      _$CreateHintParamsFromJson(json);
}

@lazySingleton
class CreateHintUseCase implements UseCase<Dle, CreateHintParams> {
  const CreateHintUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<Dle> call(CreateHintParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    if (dle.hints.length >= 3) {
      throw HintsQuantityException();
    }

    final bool canManageHints = dle.userCanManageHints(params.userId);

    if (!canManageHints) {
      throw EditorPermissionsException();
    }

    final Hint hint = Hint.create(
      dleId: params.dleId,
      title: params.title,
      type: params.type,
      description: params.description,
      requiredTries: params.requiredTries,
    );

    final Dle updatedDle = dle.addHint(hint);
    await repository.save(
      updatedDle,
      overrideEditors: false,
      overrideAssets: false,
      overrideCharacters: false,
    );

    eventBus.publish(DleUpdatedEvent(dle: updatedDle));
    return updatedDle;
  }
}
