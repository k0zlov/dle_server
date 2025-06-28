// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_selectable_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageSelectableValueDtoImpl _$$ManageSelectableValueDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageSelectableValueDtoImpl(
      id: json['id'] as String,
      parameterId: json['parameterId'] as String,
      value: json['value'] as String,
      title: json['title'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ManageSelectableValueDtoImplToJson(
        _$ManageSelectableValueDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parameterId': instance.parameterId,
      'value': instance.value,
      'title': instance.title,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
