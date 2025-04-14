// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_upload_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveUploadParamsImpl _$$SaveUploadParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveUploadParamsImpl(
      bytes: (json['bytes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      mimeType: json['mimeType'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$SaveUploadParamsImplToJson(
        _$SaveUploadParamsImpl instance) =>
    <String, dynamic>{
      'bytes': instance.bytes,
      'mimeType': instance.mimeType,
      'userId': instance.userId,
    };
