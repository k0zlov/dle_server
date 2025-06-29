// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_asset_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditAssetParamsImpl _$$EditAssetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditAssetParamsImpl(
      dleId: json['dleId'] as String,
      assetId: json['assetId'] as String,
      userId: json['userId'] as String,
      bytes: (json['bytes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      mimeType: json['mimeType'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$EditAssetParamsImplToJson(
        _$EditAssetParamsImpl instance) =>
    <String, dynamic>{
      'dleId': instance.dleId,
      'assetId': instance.assetId,
      'userId': instance.userId,
      'bytes': instance.bytes,
      'mimeType': instance.mimeType,
      'description': instance.description,
    };
