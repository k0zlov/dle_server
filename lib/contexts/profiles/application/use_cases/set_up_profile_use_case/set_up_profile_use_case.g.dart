// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_up_profile_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetUpProfileParamsImpl _$$SetUpProfileParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$SetUpProfileParamsImpl(
      userId: json['userId'] as String,
      username: json['username'] as String,
      mimeType: json['mimeType'] as String?,
      pictureBytes: (json['pictureBytes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$SetUpProfileParamsImplToJson(
        _$SetUpProfileParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'mimeType': instance.mimeType,
      'pictureBytes': instance.pictureBytes,
    };
