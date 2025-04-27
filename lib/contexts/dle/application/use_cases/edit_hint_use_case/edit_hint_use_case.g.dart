// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_hint_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditHintParamsImpl _$$EditHintParamsImplFromJson(Map<String, dynamic> json) =>
    _$EditHintParamsImpl(
      userId: json['userId'] as String,
      dleId: json['dleId'] as String,
      hintId: json['hintId'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      requiredTries: (json['requiredTries'] as num?)?.toInt(),
      isHidden: json['isHidden'] as bool?,
      type: $enumDecodeNullable(_$HintTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$EditHintParamsImplToJson(
        _$EditHintParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dleId': instance.dleId,
      'hintId': instance.hintId,
      'title': instance.title,
      'description': instance.description,
      'requiredTries': instance.requiredTries,
      'isHidden': instance.isHidden,
      'type': _$HintTypeEnumMap[instance.type],
    };

const _$HintTypeEnumMap = {
  HintType.text: 'text',
};
