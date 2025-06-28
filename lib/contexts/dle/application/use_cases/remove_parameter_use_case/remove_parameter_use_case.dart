import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remove_parameter_use_case.freezed.dart';

part 'remove_parameter_use_case.g.dart';

@freezed
class RemoveParameterParams with _$RemoveParameterParams {
  const factory RemoveParameterParams({
    required String userId,
    required String basicDleId,
    required String parameterId,
  }) = _RemoveParameterParams;

  factory RemoveParameterParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveParameterParamsFromJson(json);
}

@lazySingleton
class RemoveParameterUseCase
    implements UseCase<BasicDle, RemoveParameterParams> {
  const RemoveParameterUseCase({
    required this.dleRepository,
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort dleRepository;
  final BasicDleRepositoryPort repository;
  final DomainEventBus eventBus;

  @override
  Future<BasicDle> call(RemoveParameterParams params) async {
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

    final bool isParameterFound =
        basicDle.parameters.firstWhereOrNull(
          (e) => e.id == params.parameterId,
        ) !=
        null;

    if (!isParameterFound) {
      throw ParameterNotFoundException();
    }

    final BasicDle newBasicDle = basicDle.removeParameter(params.parameterId);
    await repository.save(newBasicDle);

    eventBus.publish(BasicDleUpdatedEvent(dle: dle, basicDle: newBasicDle));
    return newBasicDle;
  }
}
