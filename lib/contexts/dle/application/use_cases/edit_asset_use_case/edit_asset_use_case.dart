import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/dle_assets_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/delete_upload_use_case/delete_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_asset_use_case.freezed.dart';

part 'edit_asset_use_case.g.dart';

@freezed
class EditAssetParams with _$EditAssetParams {
  const factory EditAssetParams({
    required String dleId,
    required String assetId,
    required String userId,
    List<int>? bytes,
    String? mimeType,
    String? description,
  }) = _EditAssetParams;

  factory EditAssetParams.fromJson(Map<String, dynamic> json) =>
      _$EditAssetParamsFromJson(json);
}

@lazySingleton
class EditAssetUseCase implements UseCase<Dle, EditAssetParams> {
  const EditAssetUseCase({
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
  Future<Dle> call(EditAssetParams params) async {
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

    String? uploadId;

    if (params.mimeType != null && params.bytes != null) {
      try {
        final Upload upload = await saveUploadUseCase(
          SaveUploadParams(
            mimeType: params.mimeType!,
            bytes: params.bytes!,
            userId: params.userId,
          ),
        );
        uploadId = upload.id;

        unawaited(
          deleteUploadUseCase(DeleteUploadParams(uploadId: asset.uploadId)),
        );
      } catch (e) {
        throw CouldNotUploadFileException();
      }
    }

    final DleAsset newAsset = asset.edit(
      description: params.description,
      uploadId: uploadId,
    );

    final Dle newDle = dle.editAsset(newAsset);
    await repository.save(
      newDle,
      overrideEditors: false,
      overrideCharacters: false,
      overrideHints: false,
    );

    eventBus.publish(
      DleAssetsUpdatedEvent(dle: newDle, changedAssets: [newAsset]),
    );
    return newDle;
  }
}
