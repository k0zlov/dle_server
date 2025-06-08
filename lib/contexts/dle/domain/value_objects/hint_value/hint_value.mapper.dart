// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'hint_value.dart';

class HintValueMapper extends ClassMapperBase<HintValue> {
  HintValueMapper._();

  static HintValueMapper? _instance;
  static HintValueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HintValueMapper._());
      HintTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HintValue';

  static HintType _$type(HintValue v) => v.type;
  static const Field<HintValue, HintType> _f$type = Field('type', _$type);
  static dynamic _$data(HintValue v) => v.data;
  static const Field<HintValue, dynamic> _f$data = Field('data', _$data);

  @override
  final MappableFields<HintValue> fields = const {
    #type: _f$type,
    #data: _f$data,
  };

  static HintValue _instantiate(DecodingData data) {
    // ignore: inference_failure_on_function_invocation
    return HintValue(type: data.dec(_f$type), data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static HintValue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HintValue>(map);
  }

  static HintValue fromJson(String json) {
    return ensureInitialized().decodeJson<HintValue>(json);
  }
}

mixin HintValueMappable {
  String toJson() {
    return HintValueMapper.ensureInitialized()
        .encodeJson<HintValue>(this as HintValue);
  }

  Map<String, dynamic> toMap() {
    return HintValueMapper.ensureInitialized()
        .encodeMap<HintValue>(this as HintValue);
  }

  HintValueCopyWith<HintValue, HintValue, HintValue> get copyWith =>
      _HintValueCopyWithImpl(this as HintValue, $identity, $identity);
  @override
  String toString() {
    return HintValueMapper.ensureInitialized()
        .stringifyValue(this as HintValue);
  }

  @override
  bool operator ==(Object other) {
    return HintValueMapper.ensureInitialized()
        .equalsValue(this as HintValue, other);
  }

  @override
  int get hashCode {
    return HintValueMapper.ensureInitialized().hashValue(this as HintValue);
  }
}

extension HintValueValueCopy<$R, $Out> on ObjectCopyWith<$R, HintValue, $Out> {
  HintValueCopyWith<$R, HintValue, $Out> get $asHintValue =>
      $base.as((v, t, t2) => _HintValueCopyWithImpl(v, t, t2));
}

abstract class HintValueCopyWith<$R, $In extends HintValue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({HintType? type, dynamic data});
  HintValueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HintValueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HintValue, $Out>
    implements HintValueCopyWith<$R, HintValue, $Out> {
  _HintValueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HintValue> $mapper =
      HintValueMapper.ensureInitialized();
  @override
  $R call({HintType? type, Object? data = $none}) => $apply(FieldCopyWithData(
      {if (type != null) #type: type, if (data != $none) #data: data}));
  @override
  HintValue $make(CopyWithData data) => HintValue(
      type: data.get(#type, or: $value.type),
      // ignore: inference_failure_on_function_invocation
      data: data.get(#data, or: $value.data));

  @override
  HintValueCopyWith<$R2, HintValue, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HintValueCopyWithImpl($value, $cast, t);
}
