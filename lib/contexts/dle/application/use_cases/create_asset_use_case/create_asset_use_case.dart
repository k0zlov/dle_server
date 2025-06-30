import 'dart:async';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/dle_assets_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_asset_use_case.freezed.dart';

part 'create_asset_use_case.g.dart';

@freezed
class CreateAssetParams with _$CreateAssetParams {
  const factory CreateAssetParams({
    required String userId,
    required String dleId,
    required List<int> bytes,
    required String mimeType,
    @Default('') String description,
  }) = _CreateAssetParams;

  factory CreateAssetParams.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetParamsFromJson(json);
}

@lazySingleton
class CreateAssetUseCase implements UseCase<Dle, CreateAssetParams> {
  const CreateAssetUseCase({
    required this.repository,
    required this.saveUploadUseCase,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final DleRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;

  @override
  Future<Dle> call(CreateAssetParams params) async {
    final Dle? dle = await repository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final bool canManageAssets = dle.userCanManageDle(params.userId);

    if (!canManageAssets) {
      throw EditorPermissionsException();
    }

    final Upload upload;

    try {
      upload = await saveUploadUseCase(
        SaveUploadParams(
          mimeType: params.mimeType,
          bytes: params.bytes,
          userId: params.userId,
        ),
      );
    } catch (e) {
      throw CouldNotUploadFileException();
    }

    final DleAsset asset = DleAsset.create(
      userId: params.userId,
      dleId: params.dleId,
      uploadId: upload.id,
      type: DleAssetType.other,
      description: params.description,
    );

    final Dle newDle = dle.addAsset(asset);
    await repository.save(newDle);

    eventBus.publish(
      DleAssetsUpdatedEvent(dle: newDle, changedAssets: [asset]),
    );
    return newDle;
  }
}
