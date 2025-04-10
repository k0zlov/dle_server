// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_all_sessions_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevokeAllSessionsParamsImpl _$$RevokeAllSessionsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$RevokeAllSessionsParamsImpl(
      userId: json['userId'] as String,
      sourceSessionId: json['sourceSessionId'] as String,
    );

Map<String, dynamic> _$$RevokeAllSessionsParamsImplToJson(
        _$RevokeAllSessionsParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'sourceSessionId': instance.sourceSessionId,
    };
