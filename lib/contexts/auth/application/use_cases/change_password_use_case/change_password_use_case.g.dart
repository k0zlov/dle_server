// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordParamsImpl _$$ChangePasswordParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordParamsImpl(
      userId: json['userId'] as String,
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$$ChangePasswordParamsImplToJson(
        _$ChangePasswordParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
