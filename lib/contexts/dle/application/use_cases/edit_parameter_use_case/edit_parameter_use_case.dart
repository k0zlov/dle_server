import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/character_parameters_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/parameters_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_parameter_use_case.freezed.dart';

part 'edit_parameter_use_case.g.dart';

@freezed
class EditParameterParams with _$EditParameterParams {
  const factory EditParameterParams({
    required String userId,
    required String parameterId,
    required String basicDleId,
    String? title,
    String? description,
    CompareMode? compareMode,
    bool? isReverseCompared,
    bool? allowsMultipleValues,
    bool? isHidden,
  }) = _EditParameterParams;

  factory EditParameterParams.fromJson(Map<String, dynamic> json) =>
      _$EditParameterParamsFromJson(json);
}

@lazySingleton
class EditParameterUseCase implements UseCase<BasicDle, EditParameterParams> {
  const EditParameterUseCase({
    required this.repository,
    required this.dleRepository,
    @dleContext required this.eventBus,
  });

  final BasicDleRepositoryPort repository;
  final DleRepositoryPort dleRepository;
  final DomainEventBus eventBus;

  @override
  Future<BasicDle> call(EditParameterParams params) async {
    final BasicDle? basicDle = await repository.find(
      basicDleId: params.basicDleId,
    );

    if (basicDle == null) {
      throw DleNotFoundException();
    }

    final Parameter? parameter = basicDle.parameters.firstWhereOrNull(
      (e) => e.id == params.parameterId,
    );

    if (parameter == null) {
      throw ParameterNotFoundException();
    }

    final Dle? dle = await dleRepository.find(basicDle.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool userCanManage = dle.userCanManageDle(params.userId);

    if (!userCanManage) {
      throw EditorPermissionsException();
    }

    final Parameter newParameter = parameter.edit(
      isHidden: params.isHidden,
      isReverseCompared: params.isReverseCompared,
      allowsMultipleValues: params.allowsMultipleValues,
      compareMode: params.compareMode,
      title: params.title,
      description: params.description,
    );

    final BasicDle newBasicDle = basicDle.editParameter(newParameter);
    await repository.save(newBasicDle);

    if (params.allowsMultipleValues != parameter.allowsMultipleValues) {
      final Set<String> remainingCpIds =
          newBasicDle.characterParameters.map((e) => e.id).toSet();

      final List<CharacterParameter> cpToRemove =
          basicDle.characterParameters
              .where((e) => !remainingCpIds.contains(e.id))
              .toList();

      eventBus.publish(
        CharacterParametersUpdatedEvent(
          dle: dle,
          isDeletionUpdate: true,
          changedCharacterParameters: cpToRemove,
        ),
      );
    }

    eventBus.publish(
      ParametersUpdatedEvent(
        dle: dle,
        changedParameters: [newParameter],
        changedSelectableValues: [
          ...newBasicDle.selectableValues.where(
            (e) => e.parameterId == newParameter.id,
          ),
        ],
        changedCharacterParameters: [
          ...newBasicDle.characterParameters.where(
            (e) => e.parameterId == newParameter.id,
          ),
        ],
      ),
    );
    return newBasicDle;
  }
}
