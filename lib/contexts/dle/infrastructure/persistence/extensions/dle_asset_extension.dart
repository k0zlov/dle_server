import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';

extension DleAssetsMapperExtension on DleAssetsCompanion {
  static DleAssetsCompanion fromEntity(DleAsset asset) {
    return DleAssetsCompanion(
      id: Value(asset.id),
      userId: Value(asset.userId),
      uploadId: Value(asset.uploadId),
      dleId: Value(asset.dleId),
      type: Value(asset.type),
      updatedAt: Value(asset.updatedAt),
      createdAt: Value(asset.createdAt),
    );
  }
}
