// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dle.dart';

class DleTypeMapper extends EnumMapper<DleType> {
  DleTypeMapper._();

  static DleTypeMapper? _instance;
  static DleTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleTypeMapper._());
    }
    return _instance!;
  }

  static DleType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DleType decode(dynamic value) {
    switch (value) {
      case 'basic':
        return DleType.basic;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DleType self) {
    switch (self) {
      case DleType.basic:
        return 'basic';
    }
  }
}

extension DleTypeMapperExtension on DleType {
  String toValue() {
    DleTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DleType>(this) as String;
  }
}

class DleMapper extends ClassMapperBase<Dle> {
  DleMapper._();

  static DleMapper? _instance;
  static DleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleMapper._());
      DleTypeMapper.ensureInitialized();
      DleAssetMapper.ensureInitialized();
      DleEditorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Dle';

  static String _$id(Dle v) => v.id;
  static const Field<Dle, String> _f$id = Field('id', _$id, opt: true);
  static String _$title(Dle v) => v.title;
  static const Field<Dle, String> _f$title = Field('title', _$title);
  static String? _$description(Dle v) => v.description;
  static const Field<Dle, String> _f$description =
      Field('description', _$description);
  static DleType _$type(Dle v) => v.type;
  static const Field<Dle, DleType> _f$type = Field('type', _$type);
  static DateTime _$updatedAt(Dle v) => v.updatedAt;
  static const Field<Dle, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(Dle v) => v.createdAt;
  static const Field<Dle, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static bool _$isPrivate(Dle v) => v.isPrivate;
  static const Field<Dle, bool> _f$isPrivate = Field('isPrivate', _$isPrivate);
  static List<DleAsset> _$assets(Dle v) => v.assets;
  static const Field<Dle, List<DleAsset>> _f$assets =
      Field('assets', _$assets, opt: true, def: const <DleAsset>[]);
  static List<DleEditor> _$editors(Dle v) => v.editors;
  static const Field<Dle, List<DleEditor>> _f$editors =
      Field('editors', _$editors, opt: true, def: const <DleEditor>[]);

  @override
  final MappableFields<Dle> fields = const {
    #id: _f$id,
    #title: _f$title,
    #description: _f$description,
    #type: _f$type,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
    #isPrivate: _f$isPrivate,
    #assets: _f$assets,
    #editors: _f$editors,
  };

  static Dle _instantiate(DecodingData data) {
    return Dle(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        type: data.dec(_f$type),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt),
        isPrivate: data.dec(_f$isPrivate),
        assets: data.dec(_f$assets),
        editors: data.dec(_f$editors));
  }

  @override
  final Function instantiate = _instantiate;

  static Dle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Dle>(map);
  }

  static Dle fromJson(String json) {
    return ensureInitialized().decodeJson<Dle>(json);
  }
}

mixin DleMappable {
  String toJson() {
    return DleMapper.ensureInitialized().encodeJson<Dle>(this as Dle);
  }

  Map<String, dynamic> toMap() {
    return DleMapper.ensureInitialized().encodeMap<Dle>(this as Dle);
  }

  DleCopyWith<Dle, Dle, Dle> get copyWith =>
      _DleCopyWithImpl(this as Dle, $identity, $identity);
  @override
  String toString() {
    return DleMapper.ensureInitialized().stringifyValue(this as Dle);
  }

  @override
  bool operator ==(Object other) {
    return DleMapper.ensureInitialized().equalsValue(this as Dle, other);
  }

  @override
  int get hashCode {
    return DleMapper.ensureInitialized().hashValue(this as Dle);
  }
}

extension DleValueCopy<$R, $Out> on ObjectCopyWith<$R, Dle, $Out> {
  DleCopyWith<$R, Dle, $Out> get $asDle =>
      $base.as((v, t, t2) => _DleCopyWithImpl(v, t, t2));
}

abstract class DleCopyWith<$R, $In extends Dle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, DleAsset, DleAssetCopyWith<$R, DleAsset, DleAsset>>
      get assets;
  ListCopyWith<$R, DleEditor, DleEditorCopyWith<$R, DleEditor, DleEditor>>
      get editors;
  $R call(
      {String? id,
      String? title,
      String? description,
      DleType? type,
      DateTime? updatedAt,
      DateTime? createdAt,
      bool? isPrivate,
      List<DleAsset>? assets,
      List<DleEditor>? editors});
  DleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DleCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Dle, $Out>
    implements DleCopyWith<$R, Dle, $Out> {
  _DleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Dle> $mapper = DleMapper.ensureInitialized();
  @override
  ListCopyWith<$R, DleAsset, DleAssetCopyWith<$R, DleAsset, DleAsset>>
      get assets => ListCopyWith($value.assets, (v, t) => v.copyWith.$chain(t),
          (v) => call(assets: v));
  @override
  ListCopyWith<$R, DleEditor, DleEditorCopyWith<$R, DleEditor, DleEditor>>
      get editors => ListCopyWith($value.editors,
          (v, t) => v.copyWith.$chain(t), (v) => call(editors: v));
  @override
  $R call(
          {Object? id = $none,
          String? title,
          Object? description = $none,
          DleType? type,
          DateTime? updatedAt,
          DateTime? createdAt,
          bool? isPrivate,
          List<DleAsset>? assets,
          List<DleEditor>? editors}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (title != null) #title: title,
        if (description != $none) #description: description,
        if (type != null) #type: type,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (isPrivate != null) #isPrivate: isPrivate,
        if (assets != null) #assets: assets,
        if (editors != null) #editors: editors
      }));
  @override
  Dle $make(CopyWithData data) => Dle(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      type: data.get(#type, or: $value.type),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      isPrivate: data.get(#isPrivate, or: $value.isPrivate),
      assets: data.get(#assets, or: $value.assets),
      editors: data.get(#editors, or: $value.editors));

  @override
  DleCopyWith<$R2, Dle, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DleCopyWithImpl($value, $cast, t);
}
