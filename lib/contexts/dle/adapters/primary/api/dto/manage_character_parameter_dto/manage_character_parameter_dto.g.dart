// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_character_parameter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageCharacterParameterDtoImpl _$$ManageCharacterParameterDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageCharacterParameterDtoImpl(
      id: json['id'] as String,
      characterId: json['characterId'] as String,
      parameterId: json['parameterId'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      index: (json['index'] as num).toInt(),
      selectableId: json['selectableId'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ManageCharacterParameterDtoImplToJson(
        _$ManageCharacterParameterDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'characterId': instance.characterId,
      'parameterId': instance.parameterId,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'index': instance.index,
      'selectableId': instance.selectableId,
      'value': instance.value,
    };
