// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_selectable_value_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditSelectableValueParamsImpl _$$EditSelectableValueParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSelectableValueParamsImpl(
      userId: json['userId'] as String,
      basicDleId: json['basicDleId'] as String,
      selectableId: json['selectableId'] as String,
      value: json['value'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$EditSelectableValueParamsImplToJson(
        _$EditSelectableValueParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'basicDleId': instance.basicDleId,
      'selectableId': instance.selectableId,
      'value': instance.value,
      'title': instance.title,
    };
