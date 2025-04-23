import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dle_asset_dto.freezed.dart';

part 'dle_asset_dto.g.dart';

@freezed
class DleAssetDto with _$DleAssetDto {
  const factory DleAssetDto({
    required String id,
    required String dleId,
    required String uploadId,
    required String userId,
    required String type,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _DleAssetDto;

  factory DleAssetDto.fromEntity(Dle dle) {
    return DleAssetDto.fromJson(dle.toMap());
  }

  factory DleAssetDto.fromJson(Map<String, dynamic> json) =>
      _$DleAssetDtoFromJson(json);
}
