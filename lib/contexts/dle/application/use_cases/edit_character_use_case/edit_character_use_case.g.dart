// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_character_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditCharacterParamsImpl _$$EditCharacterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditCharacterParamsImpl(
      userId: json['userId'] as String,
      dleId: json['dleId'] as String,
      characterId: json['characterId'] as String,
      name: json['name'] as String?,
      isHidden: json['isHidden'] as bool?,
      aliases:
          (json['aliases'] as List<dynamic>?)?.map((e) => e as String).toList(),
      assetId: json['assetId'] as String?,
      deleteImage: json['deleteImage'] as bool? ?? false,
    );

Map<String, dynamic> _$$EditCharacterParamsImplToJson(
        _$EditCharacterParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dleId': instance.dleId,
      'characterId': instance.characterId,
      'name': instance.name,
      'isHidden': instance.isHidden,
      'aliases': instance.aliases,
      'assetId': instance.assetId,
      'deleteImage': instance.deleteImage,
    };
