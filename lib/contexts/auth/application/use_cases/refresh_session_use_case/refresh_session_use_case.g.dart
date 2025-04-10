// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_session_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshSessionParamsImpl _$$RefreshSessionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshSessionParamsImpl(
      refreshToken: json['refreshToken'] as String,
      ip: json['ip'] as String,
      deviceInfo: json['deviceInfo'] as String,
    );

Map<String, dynamic> _$$RefreshSessionParamsImplToJson(
        _$RefreshSessionParamsImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'ip': instance.ip,
      'deviceInfo': instance.deviceInfo,
    };
