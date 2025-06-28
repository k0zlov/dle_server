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
import 'package:dle_server/contexts/dle/domain/events/basic_dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_selectable_value_use_case.freezed.dart';

part 'create_selectable_value_use_case.g.dart';

@freezed
class CreateSelectableValueParams with _$CreateSelectableValueParams {
  const factory CreateSelectableValueParams({
    required String userId,
    required String basicDleId,
    required String parameterId,
    required String value,
    @Default('') String title,
  }) = _CreateSelectableValueParams;

  factory CreateSelectableValueParams.fromJson(Map<String, dynamic> json) =>
      _$CreateSelectableValueParamsFromJson(json);
}

@lazySingleton
class CreateSelectableValueUseCase
    implements UseCase<BasicDle, CreateSelectableValueParams> {
  const CreateSelectableValueUseCase({
    required this.dleRepository,
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort dleRepository;
  final BasicDleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<BasicDle> call(CreateSelectableValueParams params) async {
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

    final Parameter? parameter = basicDle.parameters.firstWhereOrNull(
      (e) => e.id == params.parameterId,
    );

    if (parameter == null) {
      throw ParameterNotFoundException();
    }

    final bool isValid = parameter.type.check(params.value);

    if (!isValid) {
      throw InvalidParameterValueType();
    }

    final SelectableValue selectableValue = SelectableValue.create(
      title: params.title,
      parameterId: params.parameterId,
      value: params.value,
    );

    final BasicDle newBasicDle = basicDle.addSelectableValue(selectableValue);
    await repository.save(newBasicDle);

    eventBus.publish(BasicDleUpdatedEvent(dle: dle, basicDle: newBasicDle));
    return newBasicDle;
  }
}
