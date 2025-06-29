import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remove_character_parameter_use_case.freezed.dart';

part 'remove_character_parameter_use_case.g.dart';

@freezed
class RemoveCharacterParameterParams with _$RemoveCharacterParameterParams {
  const factory RemoveCharacterParameterParams({
    required String userId,
    required String basicDleId,
    required String characterParameterId,
  }) = _RemoveCharacterParameterParams;

  factory RemoveCharacterParameterParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveCharacterParameterParamsFromJson(json);
}

@lazySingleton
class RemoveCharacterParameterUseCase
    implements UseCase<BasicDle, RemoveCharacterParameterParams> {
  const RemoveCharacterParameterUseCase({
    required this.repository,
    required this.dleRepository,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort dleRepository;
  final BasicDleRepositoryPort repository;

  @override
  Future<BasicDle> call(RemoveCharacterParameterParams params) async {
    final BasicDle? basicDle = await repository.find(
      basicDleId: params.basicDleId,
    );

    if (basicDle == null) {
      throw DleNotFoundException();
    }

    final Dle? dle = await dleRepository.find(basicDle.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool userCanManage = dle.userCanManageDle(params.userId);

    if (!userCanManage) {
      throw EditorPermissionsException();
    }

    final CharacterParameter? cp = basicDle.characterParameters
        .firstWhereOrNull((e) => e.id == params.characterParameterId);

    if (cp == null) {
      throw CharacterParameterNotFoundException();
    }

    final BasicDle newBasicDle = basicDle.removeCharacterParameter(cp.id);
    await repository.save(newBasicDle);

    eventBus.publish(BasicDleUpdatedEvent(dle: dle, basicDle: newBasicDle));
    return newBasicDle;
  }
}
