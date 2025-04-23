// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_dle_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditDleParamsImpl _$$EditDleParamsImplFromJson(Map<String, dynamic> json) =>
    _$EditDleParamsImpl(
      dleId: json['dleId'] as String,
      userId: json['userId'] as String,
      isPrivate: json['isPrivate'] as bool?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$EditDleParamsImplToJson(_$EditDleParamsImpl instance) =>
    <String, dynamic>{
      'dleId': instance.dleId,
      'userId': instance.userId,
      'isPrivate': instance.isPrivate,
      'title': instance.title,
      'description': instance.description,
    };
