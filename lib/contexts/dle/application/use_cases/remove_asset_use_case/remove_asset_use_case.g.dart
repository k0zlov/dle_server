// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_asset_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveAssetParamsImpl _$$RemoveAssetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveAssetParamsImpl(
      dleId: json['dleId'] as String,
      assetId: json['assetId'] as String,
      userId: json['userId'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$RemoveAssetParamsImplToJson(
        _$RemoveAssetParamsImpl instance) =>
    <String, dynamic>{
      'dleId': instance.dleId,
      'assetId': instance.assetId,
      'userId': instance.userId,
      'description': instance.description,
    };
