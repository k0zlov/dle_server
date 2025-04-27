// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'hint.dart';

class HintTypeMapper extends EnumMapper<HintType> {
  HintTypeMapper._();

  static HintTypeMapper? _instance;
  static HintTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HintTypeMapper._());
    }
    return _instance!;
  }

  static HintType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  HintType decode(dynamic value) {
    switch (value) {
      case 'text':
        return HintType.text;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(HintType self) {
    switch (self) {
      case HintType.text:
        return 'text';
    }
  }
}

extension HintTypeMapperExtension on HintType {
  String toValue() {
    HintTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<HintType>(this) as String;
  }
}

class HintMapper extends ClassMapperBase<Hint> {
  HintMapper._();

  static HintMapper? _instance;
  static HintMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HintMapper._());
      HintTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Hint';

  static String _$id(Hint v) => v.id;
  static const Field<Hint, String> _f$id = Field('id', _$id, opt: true);
  static String _$dleId(Hint v) => v.dleId;
  static const Field<Hint, String> _f$dleId = Field('dleId', _$dleId);
  static String _$title(Hint v) => v.title;
  static const Field<Hint, String> _f$title = Field('title', _$title);
  static String _$description(Hint v) => v.description;
  static const Field<Hint, String> _f$description =
      Field('description', _$description);
  static HintType _$type(Hint v) => v.type;
  static const Field<Hint, HintType> _f$type = Field('type', _$type);
  static int _$requiredTries(Hint v) => v.requiredTries;
  static const Field<Hint, int> _f$requiredTries =
      Field('requiredTries', _$requiredTries);
  static bool _$isHidden(Hint v) => v.isHidden;
  static const Field<Hint, bool> _f$isHidden = Field('isHidden', _$isHidden);
  static DateTime _$updatedAt(Hint v) => v.updatedAt;
  static const Field<Hint, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(Hint v) => v.createdAt;
  static const Field<Hint, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<Hint> fields = const {
    #id: _f$id,
    #dleId: _f$dleId,
    #title: _f$title,
    #description: _f$description,
    #type: _f$type,
    #requiredTries: _f$requiredTries,
    #isHidden: _f$isHidden,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static Hint _instantiate(DecodingData data) {
    return Hint(
        id: data.dec(_f$id),
        dleId: data.dec(_f$dleId),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        type: data.dec(_f$type),
        requiredTries: data.dec(_f$requiredTries),
        isHidden: data.dec(_f$isHidden),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Hint fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Hint>(map);
  }

  static Hint fromJson(String json) {
    return ensureInitialized().decodeJson<Hint>(json);
  }
}

mixin HintMappable {
  String toJson() {
    return HintMapper.ensureInitialized().encodeJson<Hint>(this as Hint);
  }

  Map<String, dynamic> toMap() {
    return HintMapper.ensureInitialized().encodeMap<Hint>(this as Hint);
  }

  HintCopyWith<Hint, Hint, Hint> get copyWith =>
      _HintCopyWithImpl(this as Hint, $identity, $identity);
  @override
  String toString() {
    return HintMapper.ensureInitialized().stringifyValue(this as Hint);
  }

  @override
  bool operator ==(Object other) {
    return HintMapper.ensureInitialized().equalsValue(this as Hint, other);
  }

  @override
  int get hashCode {
    return HintMapper.ensureInitialized().hashValue(this as Hint);
  }
}

extension HintValueCopy<$R, $Out> on ObjectCopyWith<$R, Hint, $Out> {
  HintCopyWith<$R, Hint, $Out> get $asHint =>
      $base.as((v, t, t2) => _HintCopyWithImpl(v, t, t2));
}

abstract class HintCopyWith<$R, $In extends Hint, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? dleId,
      String? title,
      String? description,
      HintType? type,
      int? requiredTries,
      bool? isHidden,
      DateTime? updatedAt,
      DateTime? createdAt});
  HintCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HintCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Hint, $Out>
    implements HintCopyWith<$R, Hint, $Out> {
  _HintCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Hint> $mapper = HintMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? dleId,
          String? title,
          String? description,
          HintType? type,
          int? requiredTries,
          bool? isHidden,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (dleId != null) #dleId: dleId,
        if (title != null) #title: title,
        if (description != null) #description: description,
        if (type != null) #type: type,
        if (requiredTries != null) #requiredTries: requiredTries,
        if (isHidden != null) #isHidden: isHidden,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  Hint $make(CopyWithData data) => Hint(
      id: data.get(#id, or: $value.id),
      dleId: data.get(#dleId, or: $value.dleId),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      type: data.get(#type, or: $value.type),
      requiredTries: data.get(#requiredTries, or: $value.requiredTries),
      isHidden: data.get(#isHidden, or: $value.isHidden),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  HintCopyWith<$R2, Hint, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _HintCopyWithImpl($value, $cast, t);
}
