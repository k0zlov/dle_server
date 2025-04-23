// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_asset_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditAssetParamsImpl _$$EditAssetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditAssetParamsImpl(
      dleId: json['dleId'] as String,
      userId: json['userId'] as String,
      type: $enumDecode(_$DleAssetTypeEnumMap, json['type']),
      bytes: (json['bytes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      mimeType: json['mimeType'] as String?,
    );

Map<String, dynamic> _$$EditAssetParamsImplToJson(
        _$EditAssetParamsImpl instance) =>
    <String, dynamic>{
      'dleId': instance.dleId,
      'userId': instance.userId,
      'type': _$DleAssetTypeEnumMap[instance.type]!,
      'bytes': instance.bytes,
      'mimeType': instance.mimeType,
    };

const _$DleAssetTypeEnumMap = {
  DleAssetType.icon: 'icon',
};
