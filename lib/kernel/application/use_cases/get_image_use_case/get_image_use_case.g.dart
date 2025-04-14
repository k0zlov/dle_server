// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_image_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetImageParamsImpl _$$GetImageParamsImplFromJson(Map<String, dynamic> json) =>
    _$GetImageParamsImpl(
      uploadId: json['uploadId'] as String,
      dimensions: _$recordConvertNullable(
        json['dimensions'],
        ($jsonValue) => (
          height: ($jsonValue['height'] as num).toInt(),
          width: ($jsonValue['width'] as num).toInt(),
        ),
      ),
    );

Map<String, dynamic> _$$GetImageParamsImplToJson(
        _$GetImageParamsImpl instance) =>
    <String, dynamic>{
      'uploadId': instance.uploadId,
      'dimensions': instance.dimensions == null
          ? null
          : <String, dynamic>{
              'height': instance.dimensions!.height,
              'width': instance.dimensions!.width,
            },
    };

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    value == null ? null : convert(value as Map<String, dynamic>);
