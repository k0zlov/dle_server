import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
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
    required String userId,
    required DleAssetType type,
    String? description,
    List<int>? bytes,
    String? mimeType,
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

    final DleEditor? foundEditor = dle.editors.firstWhereOrNull(
      (e) => e.userId == params.userId,
    );

    if (foundEditor == null) {
      throw EditorNotFoundException();
    }

    if (foundEditor.role.isEditor) {
      throw EditorPermissionsException();
    }

    final DleAsset? foundAsset = dle.assets.firstWhereOrNull(
      (e) => e.type == params.type,
    );

    Dle editedDle = dle;

    if (foundAsset != null) {
      await deleteUploadUseCase(
        DeleteUploadParams(uploadId: foundAsset.uploadId),
      );

      editedDle = editedDle.deleteAsset(params.type);
    }

    if (params.bytes != null && params.mimeType != null) {
      try {
        final Upload upload = await saveUploadUseCase(
          SaveUploadParams(
            bytes: params.bytes!,
            mimeType: params.mimeType!,
            userId: params.userId,
          ),
        );

        editedDle = editedDle.addAsset(
          DleAsset.create(
            userId: params.userId,
            dleId: dle.id,
            uploadId: upload.id,
            description: params.description ?? '',
            type: params.type,
          ),
        );
      } catch (e) {
        throw CouldNotUploadFileException();
      }
    }

    await repository.save(
      editedDle,
      overrideEditors: false,
      overrideCharacters: false,
      overrideHints: false,
    );
    eventBus.publish(DleUpdatedEvent(dle: editedDle));

    return editedDle;
  }
}
