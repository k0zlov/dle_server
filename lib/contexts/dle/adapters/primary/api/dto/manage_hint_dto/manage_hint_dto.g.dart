// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_hint_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageHintDtoImpl _$$ManageHintDtoImplFromJson(Map<String, dynamic> json) =>
    _$ManageHintDtoImpl(
      id: json['id'] as String,
      dleId: json['dleId'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$HintTypeEnumMap, json['type']),
      requiredTries: (json['requiredTries'] as num).toInt(),
      isHidden: json['isHidden'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ManageHintDtoImplToJson(_$ManageHintDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dleId': instance.dleId,
      'title': instance.title,
      'type': _$HintTypeEnumMap[instance.type]!,
      'requiredTries': instance.requiredTries,
      'isHidden': instance.isHidden,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
    };

const _$HintTypeEnumMap = {
  HintType.text: 'text',
};
