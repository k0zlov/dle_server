// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_character_parameter_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditCharacterParameterParamsImpl _$$EditCharacterParameterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditCharacterParameterParamsImpl(
      userId: json['userId'] as String,
      basicDleId: json['basicDleId'] as String,
      characterParameterId: json['characterParameterId'] as String,
      value: json['value'] as String?,
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EditCharacterParameterParamsImplToJson(
        _$EditCharacterParameterParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'basicDleId': instance.basicDleId,
      'characterParameterId': instance.characterParameterId,
      'value': instance.value,
      'index': instance.index,
    };
