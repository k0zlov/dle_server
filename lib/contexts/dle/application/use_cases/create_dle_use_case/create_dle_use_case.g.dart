// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dle_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDleParamsImpl _$$CreateDleParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDleParamsImpl(
      userId: json['userId'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$DleTypeEnumMap, json['type']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateDleParamsImplToJson(
        _$CreateDleParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'type': _$DleTypeEnumMap[instance.type]!,
      'description': instance.description,
    };

const _$DleTypeEnumMap = {
  DleType.basic: 'basic',
};
