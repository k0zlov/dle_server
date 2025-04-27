// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageCharacterDtoImpl _$$ManageCharacterDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageCharacterDtoImpl(
      id: json['id'] as String,
      dleId: json['dleId'] as String,
      name: json['name'] as String,
      aliases:
          (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
      isHidden: json['isHidden'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      imageId: json['imageId'] as String?,
    );

Map<String, dynamic> _$$ManageCharacterDtoImplToJson(
        _$ManageCharacterDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dleId': instance.dleId,
      'name': instance.name,
      'aliases': instance.aliases,
      'isHidden': instance.isHidden,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'imageId': instance.imageId,
    };
