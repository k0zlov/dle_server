// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_dle_socket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManageDleSocketDtoImpl _$$ManageDleSocketDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ManageDleSocketDtoImpl(
      type: $enumDecode(_$ManageDleSocketEventTypeEnumMap, json['type']),
      dtoList: (json['items'] as List<dynamic>)
          .map((e) => ManageDleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ManageDleSocketDtoImplToJson(
        _$ManageDleSocketDtoImpl instance) =>
    <String, dynamic>{
      'type': _$ManageDleSocketEventTypeEnumMap[instance.type]!,
      'items': instance.dtoList,
    };

const _$ManageDleSocketEventTypeEnumMap = {
  ManageDleSocketEventType.delete: 'delete',
  ManageDleSocketEventType.update: 'update',
};
