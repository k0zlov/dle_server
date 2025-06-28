// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_basic_dle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageBasicDleDtoImpl _$$ManageBasicDleDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageBasicDleDtoImpl(
      id: json['id'] as String,
      dleId: json['dleId'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) => ManageParameterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectableValues: (json['selectableValues'] as List<dynamic>)
          .map((e) =>
              ManageSelectableValueDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      characterParameters: (json['characterParameters'] as List<dynamic>)
          .map((e) =>
              ManageCharacterParameterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ManageBasicDleDtoImplToJson(
        _$ManageBasicDleDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dleId': instance.dleId,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'parameters': instance.parameters,
      'selectableValues': instance.selectableValues,
      'characterParameters': instance.characterParameters,
    };
