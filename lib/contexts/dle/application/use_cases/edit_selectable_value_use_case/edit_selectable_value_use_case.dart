import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/selectable_values_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_selectable_value_use_case.freezed.dart';

part 'edit_selectable_value_use_case.g.dart';

@freezed
class EditSelectableValueParams with _$EditSelectableValueParams {
  const factory EditSelectableValueParams({
    required String userId,
    required String basicDleId,
    required String selectableId,
    String? value,
    String? title,
  }) = _EditSelectableValueParams;

  factory EditSelectableValueParams.fromJson(Map<String, dynamic> json) =>
      _$EditSelectableValueParamsFromJson(json);
}

@lazySingleton
class EditSelectableValueUseCase
    implements UseCase<BasicDle, EditSelectableValueParams> {
  const EditSelectableValueUseCase({
    required this.dleRepository,
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort dleRepository;
  final BasicDleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<BasicDle> call(EditSelectableValueParams params) async {
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

    final SelectableValue? selectableValue = basicDle.selectableValues
        .firstWhereOrNull((e) => e.id == params.selectableId);

    if (selectableValue == null) {
      throw SelectableValueNotFoundException();
    }

    final Parameter? parameter = basicDle.parameters.firstWhereOrNull(
      (e) => e.id == selectableValue.parameterId,
    );

    if (parameter == null) {
      throw ParameterNotFoundException();
    }

    if (params.value != null) {
      final bool isValid = parameter.type.check(params.value!);
      if (!isValid) {
        throw InvalidParameterValueType();
      }
    }

    final SelectableValue newSelectableValue = selectableValue.edit(
      value: params.value,
      title: params.title,
    );

    final BasicDle newBasicDle = basicDle.editSelectableValue(
      newSelectableValue,
    );
    await repository.save(newBasicDle);

    eventBus.publish(
      SelectableValuesUpdatedEvent(
        dle: dle,
        changedSelectableValues: [newSelectableValue],
      ),
    );
    return newBasicDle;
  }
}
