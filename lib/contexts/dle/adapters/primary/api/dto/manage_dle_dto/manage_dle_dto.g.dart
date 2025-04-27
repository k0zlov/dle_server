// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_dle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageDleDtoImpl _$$ManageDleDtoImplFromJson(Map<String, dynamic> json) =>
    _$ManageDleDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      isPrivate: json['isPrivate'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      editors: (json['editors'] as List<dynamic>)
          .map((e) => DleEditorDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => DleAssetDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      characters: (json['characters'] as List<dynamic>)
          .map((e) => ManageCharacterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      hints: (json['hints'] as List<dynamic>)
          .map((e) => ManageHintDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ManageDleDtoImplToJson(_$ManageDleDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'isPrivate': instance.isPrivate,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'editors': instance.editors,
      'assets': instance.assets,
      'characters': instance.characters,
      'hints': instance.hints,
      'description': instance.description,
    };
