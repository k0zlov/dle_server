import 'dart:async';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_dle_use_case.freezed.dart';

part 'create_dle_use_case.g.dart';

@freezed
class CreateDleParams with _$CreateDleParams {
  const factory CreateDleParams({
    required String userId,
    required String title,
    required DleType type,
    String? description,
  }) = _CreateDleParams;

  factory CreateDleParams.fromJson(Map<String, dynamic> json) =>
      _$CreateDleParamsFromJson(json);
}

@lazySingleton
class CreateDleUseCase implements UseCase<Dle, CreateDleParams> {
  const CreateDleUseCase({
    required this.repository,
    required this.basicDleRepository,
    @dleContext required this.eventBus,
  });

  final DleRepositoryPort repository;
  final BasicDleRepositoryPort basicDleRepository;
  final DomainEventBus eventBus;

  @override
  Future<Dle> call(CreateDleParams params) async {
    final List<Dle> dleList = await repository.findUserDle(
      params.userId,
      includeAssets: false,
      includeCharacters: false,
      includeEditors: false,
    );

    final int userDleCount =
        dleList
            .where(
              (dle) => dle.editors.any(
                (e) => e.userId == params.userId && e.role.isOwner,
              ),
            )
            .length;

    if (userDleCount > 5) {
      throw DleLimitCreationException();
    }

    Dle dle = Dle.create(
      title: params.title,
      type: params.type,
      description: params.description,
    );

    final DleEditor editor = DleEditor.create(
      userId: params.userId,
      dleId: dle.id,
      role: DleEditorRole.owner,
    );

    dle = dle.addEditor(editor);

    await repository.save(dle);

    try {
      if (params.type == DleType.basic) {
        final BasicDle basicDle = BasicDle.create(dleId: dle.id);
        await basicDleRepository.save(basicDle);
      }
    } catch (e) {
      await repository.delete(dle.id);
      rethrow;
    }

    eventBus.publish(DleUpdatedEvent(dle: dle));
    return dle;
  }
}
