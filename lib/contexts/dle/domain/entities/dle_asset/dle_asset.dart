import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'dle_asset.mapper.dart';

@MappableEnum()
enum DleAssetType { icon }

@MappableClass()
class DleAsset extends Entity with DleAssetMappable {
  DleAsset({
    super.id,
    required this.userId,
    required this.dleId,
    required this.uploadId,
    required this.type,
    required this.updatedAt,
    required this.createdAt,
  });

  DleAsset.create({
    required this.userId,
    required this.dleId,
    required this.uploadId,
    required this.type,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String dleId;
  final String uploadId;
  final String userId;
  final DleAssetType type;

  final DateTime updatedAt;
  final DateTime createdAt;
}
