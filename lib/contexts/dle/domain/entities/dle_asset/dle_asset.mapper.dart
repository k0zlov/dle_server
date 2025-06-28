// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dle_asset.dart';

class DleAssetTypeMapper extends EnumMapper<DleAssetType> {
  DleAssetTypeMapper._();

  static DleAssetTypeMapper? _instance;
  static DleAssetTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleAssetTypeMapper._());
    }
    return _instance!;
  }

  static DleAssetType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DleAssetType decode(dynamic value) {
    switch (value) {
      case 'preview':
        return DleAssetType.preview;
      case 'character':
        return DleAssetType.character;
      case 'other':
        return DleAssetType.other;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DleAssetType self) {
    switch (self) {
      case DleAssetType.preview:
        return 'preview';
      case DleAssetType.character:
        return 'character';
      case DleAssetType.other:
        return 'other';
    }
  }
}

extension DleAssetTypeMapperExtension on DleAssetType {
  String toValue() {
    DleAssetTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DleAssetType>(this) as String;
  }
}

class DleAssetMapper extends ClassMapperBase<DleAsset> {
  DleAssetMapper._();

  static DleAssetMapper? _instance;
  static DleAssetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleAssetMapper._());
      DleAssetTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DleAsset';

  static String _$id(DleAsset v) => v.id;
  static const Field<DleAsset, String> _f$id = Field('id', _$id, opt: true);
  static String _$userId(DleAsset v) => v.userId;
  static const Field<DleAsset, String> _f$userId = Field('userId', _$userId);
  static String _$dleId(DleAsset v) => v.dleId;
  static const Field<DleAsset, String> _f$dleId = Field('dleId', _$dleId);
  static String _$uploadId(DleAsset v) => v.uploadId;
  static const Field<DleAsset, String> _f$uploadId =
      Field('uploadId', _$uploadId);
  static DleAssetType _$type(DleAsset v) => v.type;
  static const Field<DleAsset, DleAssetType> _f$type = Field('type', _$type);
  static String _$description(DleAsset v) => v.description;
  static const Field<DleAsset, String> _f$description =
      Field('description', _$description, opt: true, def: '');
  static DateTime _$updatedAt(DleAsset v) => v.updatedAt;
  static const Field<DleAsset, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(DleAsset v) => v.createdAt;
  static const Field<DleAsset, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<DleAsset> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #dleId: _f$dleId,
    #uploadId: _f$uploadId,
    #type: _f$type,
    #description: _f$description,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static DleAsset _instantiate(DecodingData data) {
    return DleAsset(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        dleId: data.dec(_f$dleId),
        uploadId: data.dec(_f$uploadId),
        type: data.dec(_f$type),
        description: data.dec(_f$description),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static DleAsset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DleAsset>(map);
  }

  static DleAsset fromJson(String json) {
    return ensureInitialized().decodeJson<DleAsset>(json);
  }
}

mixin DleAssetMappable {
  String toJson() {
    return DleAssetMapper.ensureInitialized()
        .encodeJson<DleAsset>(this as DleAsset);
  }

  Map<String, dynamic> toMap() {
    return DleAssetMapper.ensureInitialized()
        .encodeMap<DleAsset>(this as DleAsset);
  }

  DleAssetCopyWith<DleAsset, DleAsset, DleAsset> get copyWith =>
      _DleAssetCopyWithImpl(this as DleAsset, $identity, $identity);
  @override
  String toString() {
    return DleAssetMapper.ensureInitialized().stringifyValue(this as DleAsset);
  }

  @override
  bool operator ==(Object other) {
    return DleAssetMapper.ensureInitialized()
        .equalsValue(this as DleAsset, other);
  }

  @override
  int get hashCode {
    return DleAssetMapper.ensureInitialized().hashValue(this as DleAsset);
  }
}

extension DleAssetValueCopy<$R, $Out> on ObjectCopyWith<$R, DleAsset, $Out> {
  DleAssetCopyWith<$R, DleAsset, $Out> get $asDleAsset =>
      $base.as((v, t, t2) => _DleAssetCopyWithImpl(v, t, t2));
}

abstract class DleAssetCopyWith<$R, $In extends DleAsset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? userId,
      String? dleId,
      String? uploadId,
      DleAssetType? type,
      String? description,
      DateTime? updatedAt,
      DateTime? createdAt});
  DleAssetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DleAssetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DleAsset, $Out>
    implements DleAssetCopyWith<$R, DleAsset, $Out> {
  _DleAssetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DleAsset> $mapper =
      DleAssetMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? userId,
          String? dleId,
          String? uploadId,
          DleAssetType? type,
          String? description,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (userId != null) #userId: userId,
        if (dleId != null) #dleId: dleId,
        if (uploadId != null) #uploadId: uploadId,
        if (type != null) #type: type,
        if (description != null) #description: description,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  DleAsset $make(CopyWithData data) => DleAsset(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      dleId: data.get(#dleId, or: $value.dleId),
      uploadId: data.get(#uploadId, or: $value.uploadId),
      type: data.get(#type, or: $value.type),
      description: data.get(#description, or: $value.description),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  DleAssetCopyWith<$R2, DleAsset, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DleAssetCopyWithImpl($value, $cast, t);
}
