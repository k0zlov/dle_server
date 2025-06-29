import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
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
    String? assetId,
  }) = _CreateCharacterParams;

  factory CreateCharacterParams.fromJson(Map<String, dynamic> json) =>
      _$CreateCharacterParamsFromJson(json);
}

@lazySingleton
class CreateCharacterUseCase implements UseCase<Dle, CreateCharacterParams> {
  const CreateCharacterUseCase({
    required this.repository,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;

  @override
  Future<Dle> call(CreateCharacterParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageCharacters = dle.userCanManageDle(params.userId);

    if (!canManageCharacters) {
      throw EditorPermissionsException();
    }

    Dle updatedDle = dle;

    if (params.assetId != null) {
      final DleAsset? asset = dle.assets.firstWhereOrNull(
        (e) => e.id == params.assetId,
      );

      if (asset == null) {
        throw DleAssetNotFoundException();
      }

      final DleAsset newDleAsset = asset.setType(DleAssetType.character);
      updatedDle.editAsset(newDleAsset);
    }

    final Character character = Character.create(
      name: params.name,
      dleId: dle.id,
      assetId: params.assetId,
      aliases: params.aliases,
      isHidden: params.isHidden,
    );

    updatedDle = updatedDle.addCharacter(character);
    await repository.save(
      updatedDle,
      overrideEditors: false,
      overrideHints: false,
    );

    eventBus.publish(DleUpdatedEvent(dle: updatedDle));
    return updatedDle;
  }
}
