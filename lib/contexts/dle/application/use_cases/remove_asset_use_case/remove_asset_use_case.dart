import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/delete_upload_use_case/delete_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remove_asset_use_case.freezed.dart';

part 'remove_asset_use_case.g.dart';

@freezed
class RemoveAssetParams with _$RemoveAssetParams {
  const factory RemoveAssetParams({
    required String dleId,
    required String assetId,
    required String userId,
    String? description,
  }) = _RemoveAssetParams;

  factory RemoveAssetParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveAssetParamsFromJson(json);
}

@lazySingleton
class RemoveAssetUseCase implements UseCase<Dle, RemoveAssetParams> {
  const RemoveAssetUseCase({
    required this.repository,
    required this.saveUploadUseCase,
    required this.deleteUploadUseCase,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;
  final DeleteUploadUseCase deleteUploadUseCase;

  @override
  Future<Dle> call(RemoveAssetParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    if (!dle.userCanManageDle(params.userId)) {
      throw EditorPermissionsException();
    }

    final DleAsset? asset = dle.assets.firstWhereOrNull(
      (e) => e.id == params.assetId,
    );

    if (asset == null) {
      throw DleAssetNotFoundException();
    }

    final Dle newDle = dle.removeAsset(asset.id);
    await repository.save(
      newDle,
      overrideEditors: false,
      overrideCharacters: false,
      overrideHints: false,
    );

    eventBus.publish(DleUpdatedEvent(dle: newDle));
    return newDle;
  }
}
