// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dle_editor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DleEditorDtoImpl _$$DleEditorDtoImplFromJson(Map<String, dynamic> json) =>
    _$DleEditorDtoImpl(
      id: json['id'] as String,
      dleId: json['dleId'] as String,
      userId: json['userId'] as String,
      role: json['role'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DleEditorDtoImplToJson(_$DleEditorDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dleId': instance.dleId,
      'userId': instance.userId,
      'role': instance.role,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
