// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_parameter_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditParameterParamsImpl _$$EditParameterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditParameterParamsImpl(
      userId: json['userId'] as String,
      parameterId: json['parameterId'] as String,
      basicDleId: json['basicDleId'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      compareMode:
          $enumDecodeNullable(_$CompareModeEnumMap, json['compareMode']),
      isReverseCompared: json['isReverseCompared'] as bool?,
      allowsMultipleValues: json['allowsMultipleValues'] as bool?,
      isHidden: json['isHidden'] as bool?,
    );

Map<String, dynamic> _$$EditParameterParamsImplToJson(
        _$EditParameterParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'parameterId': instance.parameterId,
      'basicDleId': instance.basicDleId,
      'title': instance.title,
      'description': instance.description,
      'compareMode': _$CompareModeEnumMap[instance.compareMode],
      'isReverseCompared': instance.isReverseCompared,
      'allowsMultipleValues': instance.allowsMultipleValues,
      'isHidden': instance.isHidden,
    };

const _$CompareModeEnumMap = {
  CompareMode.indexed: 'indexed',
  CompareMode.compared: 'compared',
  CompareMode.none: 'none',
};
