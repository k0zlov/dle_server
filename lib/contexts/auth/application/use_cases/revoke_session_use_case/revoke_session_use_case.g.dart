// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_session_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevokeSessionParamsImpl _$$RevokeSessionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$RevokeSessionParamsImpl(
      userId: json['userId'] as String,
      sessionId: json['sessionId'] as String,
    );

Map<String, dynamic> _$$RevokeSessionParamsImplToJson(
        _$RevokeSessionParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'sessionId': instance.sessionId,
    };
