// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_character_parameter_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCharacterParameterParamsImpl
    _$$CreateCharacterParameterParamsImplFromJson(Map<String, dynamic> json) =>
        _$CreateCharacterParameterParamsImpl(
          userId: json['userId'] as String,
          basicDleId: json['basicDleId'] as String,
          parameterId: json['parameterId'] as String,
          characterId: json['characterId'] as String,
          value: json['value'] as String,
          index: (json['index'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$CreateCharacterParameterParamsImplToJson(
        _$CreateCharacterParameterParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'basicDleId': instance.basicDleId,
      'parameterId': instance.parameterId,
      'characterId': instance.characterId,
      'value': instance.value,
      'index': instance.index,
    };
