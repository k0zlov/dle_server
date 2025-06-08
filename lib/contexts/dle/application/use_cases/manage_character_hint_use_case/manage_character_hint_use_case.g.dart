// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_character_hint_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageCharacterHintParamsImpl _$$ManageCharacterHintParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageCharacterHintParamsImpl(
      userId: json['userId'] as String,
      hintId: json['hintId'] as String,
      dleId: json['dleId'] as String,
      characterId: json['characterId'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$ManageCharacterHintParamsImplToJson(
        _$ManageCharacterHintParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'hintId': instance.hintId,
      'dleId': instance.dleId,
      'characterId': instance.characterId,
      'value': instance.value,
    };
