// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_image_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetImageParamsImpl _$$GetImageParamsImplFromJson(Map<String, dynamic> json) =>
    _$GetImageParamsImpl(
      uploadId: json['uploadId'] as String,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetImageParamsImplToJson(
        _$GetImageParamsImpl instance) =>
    <String, dynamic>{
      'uploadId': instance.uploadId,
      'height': instance.height,
      'width': instance.width,
    };
