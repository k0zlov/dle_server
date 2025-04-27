import 'dart:async';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_character_use_case.freezed.dart';

part 'create_character_use_case.g.dart';

@freezed
class CreateCharacterParams with _$CreateCharacterParams {
  const factory CreateCharacterParams({
    required String userId,
    required String dleId,
    required String name,
    @Default(false) bool isHidden,
    @Default([]) List<String> aliases,
    List<int>? imageBytes,
    String? mimeType,
  }) = _CreateCharacterParams;

  factory CreateCharacterParams.fromJson(Map<String, dynamic> json) =>
      _$CreateCharacterParamsFromJson(json);
}

@lazySingleton
class CreateCharacterUseCase implements UseCase<Dle, CreateCharacterParams> {
  const CreateCharacterUseCase({
    required this.repository,
    required this.saveUploadUseCase,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;

  @override
  Future<Dle> call(CreateCharacterParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageCharacters = dle.userCanManageCharacters(params.userId);

    if (!canManageCharacters) {
      throw EditorPermissionsException();
    }

    Character character = Character.create(
      name: params.name,
      dleId: dle.id,
      aliases: params.aliases,
      isHidden: params.isHidden,
    );

    if (params.imageBytes != null && params.mimeType != null) {
      try {
        final Upload upload = await saveUploadUseCase(
          SaveUploadParams(
            bytes: params.imageBytes!,
            mimeType: params.mimeType!,
            userId: params.userId,
          ),
        );

        character = character.edit(imageId: upload.id);
      } catch (e) {
        throw CouldNotUploadFileException();
      }
    }

    final Dle updatedDle = dle.addCharacter(character);

    await repository.save(
      updatedDle,
      overrideAssets: false,
      overrideEditors: false,
      overrideHints: false,
    );
    eventBus.publish(DleUpdatedEvent(dle: updatedDle));

    return updatedDle;
  }
}
