// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_character_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCharacterParamsImpl _$$CreateCharacterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCharacterParamsImpl(
      userId: json['userId'] as String,
      dleId: json['dleId'] as String,
      name: json['name'] as String,
      isHidden: json['isHidden'] as bool? ?? false,
      aliases: (json['aliases'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      imageBytes: (json['imageBytes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      mimeType: json['mimeType'] as String?,
    );

Map<String, dynamic> _$$CreateCharacterParamsImplToJson(
        _$CreateCharacterParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dleId': instance.dleId,
      'name': instance.name,
      'isHidden': instance.isHidden,
      'aliases': instance.aliases,
      'imageBytes': instance.imageBytes,
      'mimeType': instance.mimeType,
    };
