// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_editor_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditEditorParamsImpl _$$EditEditorParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditEditorParamsImpl(
      dleId: json['dleId'] as String,
      userId: json['userId'] as String,
      editorUserId: json['editorUserId'] as String,
      role: $enumDecode(_$DleEditorRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$EditEditorParamsImplToJson(
        _$EditEditorParamsImpl instance) =>
    <String, dynamic>{
      'dleId': instance.dleId,
      'userId': instance.userId,
      'editorUserId': instance.editorUserId,
      'role': _$DleEditorRoleEnumMap[instance.role]!,
    };

const _$DleEditorRoleEnumMap = {
  DleEditorRole.editor: 'editor',
  DleEditorRole.admin: 'admin',
  DleEditorRole.owner: 'owner',
};
