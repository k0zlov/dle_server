// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_asset_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAssetParamsImpl _$$CreateAssetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAssetParamsImpl(
      userId: json['userId'] as String,
      dleId: json['dleId'] as String,
      type: $enumDecode(_$DleAssetTypeEnumMap, json['type']),
      description: json['description'] as String?,
      bytes: (json['bytes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      mimeType: json['mimeType'] as String?,
    );

Map<String, dynamic> _$$CreateAssetParamsImplToJson(
        _$CreateAssetParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dleId': instance.dleId,
      'type': _$DleAssetTypeEnumMap[instance.type]!,
      'description': instance.description,
      'bytes': instance.bytes,
      'mimeType': instance.mimeType,
    };

const _$DleAssetTypeEnumMap = {
  DleAssetType.preview: 'preview',
  DleAssetType.character: 'character',
  DleAssetType.other: 'other',
};
