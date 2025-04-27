// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'basic_dle.dart';

class BasicDleMapper extends ClassMapperBase<BasicDle> {
  BasicDleMapper._();

  static BasicDleMapper? _instance;
  static BasicDleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BasicDleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BasicDle';

  static String _$id(BasicDle v) => v.id;
  static const Field<BasicDle, String> _f$id = Field('id', _$id, opt: true);
  static DateTime _$updatedAt(BasicDle v) => v.updatedAt;
  static const Field<BasicDle, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(BasicDle v) => v.createdAt;
  static const Field<BasicDle, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<BasicDle> fields = const {
    #id: _f$id,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static BasicDle _instantiate(DecodingData data) {
    return BasicDle(
        id: data.dec(_f$id),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static BasicDle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BasicDle>(map);
  }

  static BasicDle fromJson(String json) {
    return ensureInitialized().decodeJson<BasicDle>(json);
  }
}

mixin BasicDleMappable {
  String toJson() {
    return BasicDleMapper.ensureInitialized()
        .encodeJson<BasicDle>(this as BasicDle);
  }

  Map<String, dynamic> toMap() {
    return BasicDleMapper.ensureInitialized()
        .encodeMap<BasicDle>(this as BasicDle);
  }

  BasicDleCopyWith<BasicDle, BasicDle, BasicDle> get copyWith =>
      _BasicDleCopyWithImpl(this as BasicDle, $identity, $identity);
  @override
  String toString() {
    return BasicDleMapper.ensureInitialized().stringifyValue(this as BasicDle);
  }

  @override
  bool operator ==(Object other) {
    return BasicDleMapper.ensureInitialized()
        .equalsValue(this as BasicDle, other);
  }

  @override
  int get hashCode {
    return BasicDleMapper.ensureInitialized().hashValue(this as BasicDle);
  }
}

extension BasicDleValueCopy<$R, $Out> on ObjectCopyWith<$R, BasicDle, $Out> {
  BasicDleCopyWith<$R, BasicDle, $Out> get $asBasicDle =>
      $base.as((v, t, t2) => _BasicDleCopyWithImpl(v, t, t2));
}

abstract class BasicDleCopyWith<$R, $In extends BasicDle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? updatedAt, DateTime? createdAt});
  BasicDleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BasicDleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BasicDle, $Out>
    implements BasicDleCopyWith<$R, BasicDle, $Out> {
  _BasicDleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BasicDle> $mapper =
      BasicDleMapper.ensureInitialized();
  @override
  $R call({Object? id = $none, DateTime? updatedAt, DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  BasicDle $make(CopyWithData data) => BasicDle(
      id: data.get(#id, or: $value.id),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  BasicDleCopyWith<$R2, BasicDle, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BasicDleCopyWithImpl($value, $cast, t);
}
