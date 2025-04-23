// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dle_asset_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DleAssetDtoImpl _$$DleAssetDtoImplFromJson(Map<String, dynamic> json) =>
    _$DleAssetDtoImpl(
      id: json['id'] as String,
      dleId: json['dleId'] as String,
      uploadId: json['uploadId'] as String,
      userId: json['userId'] as String,
      type: json['type'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DleAssetDtoImplToJson(_$DleAssetDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dleId': instance.dleId,
      'uploadId': instance.uploadId,
      'userId': instance.userId,
      'type': instance.type,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
