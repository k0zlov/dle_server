import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_character_parameter_use_case.freezed.dart';

part 'create_character_parameter_use_case.g.dart';

@freezed
class CreateCharacterParameterParams with _$CreateCharacterParameterParams {
  const factory CreateCharacterParameterParams({
    required String userId,
    required String basicDleId,
    required String parameterId,
    required String characterId,
    required String value,
    @Default(0) int index,
  }) = _CreateCharacterParameterParams;

  factory CreateCharacterParameterParams.fromJson(Map<String, dynamic> json) =>
      _$CreateCharacterParameterParamsFromJson(json);
}

@lazySingleton
class CreateCharacterParameterUseCase
    implements UseCase<BasicDle, CreateCharacterParameterParams> {
  const CreateCharacterParameterUseCase({
    required this.repository,
    required this.dleRepository,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort dleRepository;
  final BasicDleRepositoryPort repository;

  @override
  Future<BasicDle> call(CreateCharacterParameterParams params) async {
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

    final Character? c = dle.characters.firstWhereOrNull(
      (e) => e.id == params.characterId,
    );

    if (c == null) {
      throw CharacterNotFoundException();
    }

    final Parameter? p = basicDle.parameters.firstWhereOrNull(
      (e) => e.id == params.parameterId,
    );

    if (p == null) {
      throw ParameterNotFoundException();
    }

    if (!p.type.check(params.value)) {
      throw InvalidParameterValueType();
    }

    final CharacterParameter cp = CharacterParameter.create(
      characterId: c.id,
      parameterId: p.id,
      value: params.value,
      index: params.index,
    );

    final BasicDle newBasicDle = basicDle.addCharacterParameter(cp);
    await repository.save(newBasicDle);

    eventBus.publish(BasicDleUpdatedEvent(dle: dle, basicDle: newBasicDle));
    return newBasicDle;
  }
}
