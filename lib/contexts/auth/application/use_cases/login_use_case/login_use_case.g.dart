// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginParamsImpl _$$LoginParamsImplFromJson(Map<String, dynamic> json) =>
    _$LoginParamsImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      ip: json['ip'] as String,
      deviceInfo: json['deviceInfo'] as String,
    );

Map<String, dynamic> _$$LoginParamsImplToJson(_$LoginParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'ip': instance.ip,
      'deviceInfo': instance.deviceInfo,
    };
