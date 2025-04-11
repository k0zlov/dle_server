// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordParamsImpl _$$ResetPasswordParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordParamsImpl(
      token: json['token'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ResetPasswordParamsImplToJson(
        _$ResetPasswordParamsImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'password': instance.password,
    };
