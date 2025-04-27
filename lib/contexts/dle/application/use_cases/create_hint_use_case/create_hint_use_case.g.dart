// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_hint_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateHintParamsImpl _$$CreateHintParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateHintParamsImpl(
      userId: json['userId'] as String,
      dleId: json['dleId'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$HintTypeEnumMap, json['type']),
      requiredTries: (json['requiredTries'] as num).toInt(),
      isHidden: json['isHidden'] as bool?,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateHintParamsImplToJson(
        _$CreateHintParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dleId': instance.dleId,
      'title': instance.title,
      'type': _$HintTypeEnumMap[instance.type]!,
      'requiredTries': instance.requiredTries,
      'isHidden': instance.isHidden,
      'description': instance.description,
    };

const _$HintTypeEnumMap = {
  HintType.text: 'text',
};
