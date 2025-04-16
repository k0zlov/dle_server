// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditProfileParamsImpl _$$EditProfileParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EditProfileParamsImpl(
      userId: json['userId'] as String,
      username: json['username'] as String?,
      mimeType: json['mimeType'] as String?,
      pictureBytes: (json['pictureBytes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$EditProfileParamsImplToJson(
        _$EditProfileParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'mimeType': instance.mimeType,
      'pictureBytes': instance.pictureBytes,
    };
