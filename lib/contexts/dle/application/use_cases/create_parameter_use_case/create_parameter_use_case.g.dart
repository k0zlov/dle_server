// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_parameter_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateParameterParamsImpl _$$CreateParameterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateParameterParamsImpl(
      userId: json['userId'] as String,
      basicDleId: json['basicDleId'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$ParameterTypeEnumMap, json['type']),
      description: json['description'] as String? ?? '',
      compareMode:
          $enumDecodeNullable(_$CompareModeEnumMap, json['compareMode']) ??
              CompareMode.none,
      isReverseCompared: json['isReverseCompared'] as bool? ?? false,
      allowsMultipleValues: json['allowsMultipleValues'] as bool? ?? false,
      isSelectable: json['isSelectable'] as bool? ?? false,
      isHidden: json['isHidden'] as bool? ?? true,
    );

Map<String, dynamic> _$$CreateParameterParamsImplToJson(
        _$CreateParameterParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'basicDleId': instance.basicDleId,
      'title': instance.title,
      'type': _$ParameterTypeEnumMap[instance.type]!,
      'description': instance.description,
      'compareMode': _$CompareModeEnumMap[instance.compareMode]!,
      'isReverseCompared': instance.isReverseCompared,
      'allowsMultipleValues': instance.allowsMultipleValues,
      'isSelectable': instance.isSelectable,
      'isHidden': instance.isHidden,
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
