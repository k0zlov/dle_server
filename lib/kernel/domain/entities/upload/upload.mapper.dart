// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'upload.dart';

class UploadMapper extends ClassMapperBase<Upload> {
  UploadMapper._();

  static UploadMapper? _instance;
  static UploadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UploadMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Upload';

  static String _$id(Upload v) => v.id;
  static const Field<Upload, String> _f$id = Field('id', _$id, opt: true);
  static String? _$uploaderId(Upload v) => v.uploaderId;
  static const Field<Upload, String> _f$uploaderId =
      Field('uploaderId', _$uploaderId);
  static String _$mimeType(Upload v) => v.mimeType;
  static const Field<Upload, String> _f$mimeType =
      Field('mimeType', _$mimeType);
  static int _$size(Upload v) => v.size;
  static const Field<Upload, int> _f$size = Field('size', _$size);
  static DateTime _$updatedAt(Upload v) => v.updatedAt;
  static const Field<Upload, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(Upload v) => v.createdAt;
  static const Field<Upload, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<Upload> fields = const {
    #id: _f$id,
    #uploaderId: _f$uploaderId,
    #mimeType: _f$mimeType,
    #size: _f$size,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static Upload _instantiate(DecodingData data) {
    return Upload(
        id: data.dec(_f$id),
        uploaderId: data.dec(_f$uploaderId),
        mimeType: data.dec(_f$mimeType),
        size: data.dec(_f$size),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Upload fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Upload>(map);
  }

  static Upload fromJson(String json) {
    return ensureInitialized().decodeJson<Upload>(json);
  }
}

mixin UploadMappable {
  String toJson() {
    return UploadMapper.ensureInitialized().encodeJson<Upload>(this as Upload);
  }

  Map<String, dynamic> toMap() {
    return UploadMapper.ensureInitialized().encodeMap<Upload>(this as Upload);
  }

  UploadCopyWith<Upload, Upload, Upload> get copyWith =>
      _UploadCopyWithImpl(this as Upload, $identity, $identity);
  @override
  String toString() {
    return UploadMapper.ensureInitialized().stringifyValue(this as Upload);
  }

  @override
  bool operator ==(Object other) {
    return UploadMapper.ensureInitialized().equalsValue(this as Upload, other);
  }

  @override
  int get hashCode {
    return UploadMapper.ensureInitialized().hashValue(this as Upload);
  }
}

extension UploadValueCopy<$R, $Out> on ObjectCopyWith<$R, Upload, $Out> {
  UploadCopyWith<$R, Upload, $Out> get $asUpload =>
      $base.as((v, t, t2) => _UploadCopyWithImpl(v, t, t2));
}

abstract class UploadCopyWith<$R, $In extends Upload, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? uploaderId,
      String? mimeType,
      int? size,
      DateTime? updatedAt,
      DateTime? createdAt});
  UploadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UploadCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Upload, $Out>
    implements UploadCopyWith<$R, Upload, $Out> {
  _UploadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Upload> $mapper = UploadMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? uploaderId = $none,
          String? mimeType,
          int? size,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (uploaderId != $none) #uploaderId: uploaderId,
        if (mimeType != null) #mimeType: mimeType,
        if (size != null) #size: size,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  Upload $make(CopyWithData data) => Upload(
      id: data.get(#id, or: $value.id),
      uploaderId: data.get(#uploaderId, or: $value.uploaderId),
      mimeType: data.get(#mimeType, or: $value.mimeType),
      size: data.get(#size, or: $value.size),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  UploadCopyWith<$R2, Upload, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UploadCopyWithImpl($value, $cast, t);
}
