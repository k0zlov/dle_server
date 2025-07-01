import 'dart:async';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/parameters_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_parameter_use_case.freezed.dart';

part 'create_parameter_use_case.g.dart';

@freezed
class CreateParameterParams with _$CreateParameterParams {
  const factory CreateParameterParams({
    required String userId,
    required String basicDleId,
    required String title,
    required ParameterType type,
    @Default('') String description,
    @Default(CompareMode.none) CompareMode compareMode,
    @Default(false) bool isReverseCompared,
    @Default(false) bool allowsMultipleValues,
    @Default(false) bool isSelectable,
    @Default(true) bool isHidden,
  }) = _CreateParameterParams;

  factory CreateParameterParams.fromJson(Map<String, dynamic> json) =>
      _$CreateParameterParamsFromJson(json);
}

@lazySingleton
class CreateParameterUseCase
    implements UseCase<BasicDle, CreateParameterParams> {
  const CreateParameterUseCase({
    required this.dleRepository,
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort dleRepository;
  final BasicDleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<BasicDle> call(CreateParameterParams params) async {
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

    final Parameter parameter = Parameter.create(
      basicDleId: params.basicDleId,
      title: params.title,
      description: params.description,
      type: params.type,
      compareMode: params.compareMode,
      isReverseCompared: params.isReverseCompared,
      allowsMultipleValues: params.allowsMultipleValues,
      isSelectable: params.isSelectable,
      isHidden: params.isHidden,
    );

    final BasicDle newBasicDle = basicDle.addParameter(parameter);
    await repository.save(newBasicDle);

    eventBus.publish(
      ParametersUpdatedEvent(
        dle: dle,
        changedParameters: [parameter],
        changedCharacterParameters: [],
        changedSelectableValues: [],
      ),
    );
    return newBasicDle;
  }
}
