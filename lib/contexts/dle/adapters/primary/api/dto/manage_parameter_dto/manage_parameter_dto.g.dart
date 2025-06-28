// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_parameter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageParameterDtoImpl _$$ManageParameterDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageParameterDtoImpl(
      id: json['id'] as String,
      basicDleId: json['basicDleId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ParameterTypeEnumMap, json['type']),
      compareMode: $enumDecode(_$CompareModeEnumMap, json['compareMode']),
      isReverseCompared: json['isReverseCompared'] as bool,
      allowsMultipleValues: json['allowsMultipleValues'] as bool,
      isSelectable: json['isSelectable'] as bool,
      isHidden: json['isHidden'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ManageParameterDtoImplToJson(
        _$ManageParameterDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'basicDleId': instance.basicDleId,
      'title': instance.title,
      'description': instance.description,
      'type': _$ParameterTypeEnumMap[instance.type]!,
      'compareMode': _$CompareModeEnumMap[instance.compareMode]!,
      'isReverseCompared': instance.isReverseCompared,
      'allowsMultipleValues': instance.allowsMultipleValues,
      'isSelectable': instance.isSelectable,
      'isHidden': instance.isHidden,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$ParameterTypeEnumMap = {
  ParameterType.number: 'number',
  ParameterType.text: 'text',
  ParameterType.image: 'image',
};

const _$CompareModeEnumMap = {
  CompareMode.indexed: 'indexed',
  CompareMode.compared: 'compared',
  CompareMode.none: 'none',
};
