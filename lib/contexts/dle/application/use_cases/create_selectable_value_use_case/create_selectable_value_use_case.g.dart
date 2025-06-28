// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_selectable_value_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSelectableValueParamsImpl _$$CreateSelectableValueParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSelectableValueParamsImpl(
      userId: json['userId'] as String,
      basicDleId: json['basicDleId'] as String,
      parameterId: json['parameterId'] as String,
      value: json['value'] as String,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateSelectableValueParamsImplToJson(
        _$CreateSelectableValueParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'basicDleId': instance.basicDleId,
      'parameterId': instance.parameterId,
      'value': instance.value,
      'title': instance.title,
    };
