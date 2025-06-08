// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'parameter_value.dart';

class ParameterValueMapper extends ClassMapperBase<ParameterValue> {
  ParameterValueMapper._();

  static ParameterValueMapper? _instance;
  static ParameterValueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ParameterValueMapper._());
      ParameterTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ParameterValue';

  static ParameterType _$type(ParameterValue v) => v.type;
  static const Field<ParameterValue, ParameterType> _f$type =
      Field('type', _$type);
  static dynamic _$data(ParameterValue v) => v.data;
  static const Field<ParameterValue, dynamic> _f$data = Field('data', _$data);

  @override
  final MappableFields<ParameterValue> fields = const {
    #type: _f$type,
    #data: _f$data,
  };

  static ParameterValue _instantiate(DecodingData data) {
    return ParameterValue(type: data.dec(_f$type), data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static ParameterValue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ParameterValue>(map);
  }

  static ParameterValue fromJson(String json) {
    return ensureInitialized().decodeJson<ParameterValue>(json);
  }
}

mixin ParameterValueMappable {
  String toJson() {
    return ParameterValueMapper.ensureInitialized()
        .encodeJson<ParameterValue>(this as ParameterValue);
  }

  Map<String, dynamic> toMap() {
    return ParameterValueMapper.ensureInitialized()
        .encodeMap<ParameterValue>(this as ParameterValue);
  }

  ParameterValueCopyWith<ParameterValue, ParameterValue, ParameterValue>
      get copyWith => _ParameterValueCopyWithImpl(
          this as ParameterValue, $identity, $identity);
  @override
  String toString() {
    return ParameterValueMapper.ensureInitialized()
        .stringifyValue(this as ParameterValue);
  }

  @override
  bool operator ==(Object other) {
    return ParameterValueMapper.ensureInitialized()
        .equalsValue(this as ParameterValue, other);
  }

  @override
  int get hashCode {
    return ParameterValueMapper.ensureInitialized()
        .hashValue(this as ParameterValue);
  }
}

extension ParameterValueValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ParameterValue, $Out> {
  ParameterValueCopyWith<$R, ParameterValue, $Out> get $asParameterValue =>
      $base.as((v, t, t2) => _ParameterValueCopyWithImpl(v, t, t2));
}

abstract class ParameterValueCopyWith<$R, $In extends ParameterValue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({ParameterType? type, dynamic data});
  ParameterValueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ParameterValueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ParameterValue, $Out>
    implements ParameterValueCopyWith<$R, ParameterValue, $Out> {
  _ParameterValueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ParameterValue> $mapper =
      ParameterValueMapper.ensureInitialized();
  @override
  $R call({ParameterType? type, Object? data = $none}) =>
      $apply(FieldCopyWithData(
          {if (type != null) #type: type, if (data != $none) #data: data}));
  @override
  ParameterValue $make(CopyWithData data) => ParameterValue(
      type: data.get(#type, or: $value.type),
      data: data.get(#data, or: $value.data));

  @override
  ParameterValueCopyWith<$R2, ParameterValue, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ParameterValueCopyWithImpl($value, $cast, t);
}
