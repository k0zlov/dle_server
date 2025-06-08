// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hint_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HintValueDtoImpl _$$HintValueDtoImplFromJson(Map<String, dynamic> json) =>
    _$HintValueDtoImpl(
      type: $enumDecode(_$HintTypeEnumMap, json['type']),
      data: json['data'],
    );

Map<String, dynamic> _$$HintValueDtoImplToJson(_$HintValueDtoImpl instance) =>
    <String, dynamic>{
      'type': _$HintTypeEnumMap[instance.type]!,
      'data': instance.data,
    };

const _$HintTypeEnumMap = {
  HintType.text: 'text',
};
