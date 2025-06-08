// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_character_hint_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageCharacterHintDtoImpl _$$ManageCharacterHintDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageCharacterHintDtoImpl(
      id: json['id'] as String,
      hintId: json['hintId'] as String,
      characterId: json['characterId'] as String,
      value: HintValueDto.fromJson(json['value'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ManageCharacterHintDtoImplToJson(
        _$ManageCharacterHintDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hintId': instance.hintId,
      'characterId': instance.characterId,
      'value': instance.value,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
