// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'selectable_value.dart';

class SelectableValueMapper extends ClassMapperBase<SelectableValue> {
  SelectableValueMapper._();

  static SelectableValueMapper? _instance;
  static SelectableValueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectableValueMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SelectableValue';

  static String _$id(SelectableValue v) => v.id;
  static const Field<SelectableValue, String> _f$id =
      Field('id', _$id, opt: true);
  static String _$parameterId(SelectableValue v) => v.parameterId;
  static const Field<SelectableValue, String> _f$parameterId =
      Field('parameterId', _$parameterId);
  static String _$value(SelectableValue v) => v.value;
  static const Field<SelectableValue, String> _f$value =
      Field('value', _$value);
  static String _$title(SelectableValue v) => v.title;
  static const Field<SelectableValue, String> _f$title =
      Field('title', _$title);
  static DateTime _$updatedAt(SelectableValue v) => v.updatedAt;
  static const Field<SelectableValue, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(SelectableValue v) => v.createdAt;
  static const Field<SelectableValue, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<SelectableValue> fields = const {
    #id: _f$id,
    #parameterId: _f$parameterId,
    #value: _f$value,
    #title: _f$title,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static SelectableValue _instantiate(DecodingData data) {
    return SelectableValue(
        id: data.dec(_f$id),
        parameterId: data.dec(_f$parameterId),
        value: data.dec(_f$value),
        title: data.dec(_f$title),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static SelectableValue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectableValue>(map);
  }

  static SelectableValue fromJson(String json) {
    return ensureInitialized().decodeJson<SelectableValue>(json);
  }
}

mixin SelectableValueMappable {
  String toJson() {
    return SelectableValueMapper.ensureInitialized()
        .encodeJson<SelectableValue>(this as SelectableValue);
  }

  Map<String, dynamic> toMap() {
    return SelectableValueMapper.ensureInitialized()
        .encodeMap<SelectableValue>(this as SelectableValue);
  }

  SelectableValueCopyWith<SelectableValue, SelectableValue, SelectableValue>
      get copyWith => _SelectableValueCopyWithImpl(
          this as SelectableValue, $identity, $identity);
  @override
  String toString() {
    return SelectableValueMapper.ensureInitialized()
        .stringifyValue(this as SelectableValue);
  }

  @override
  bool operator ==(Object other) {
    return SelectableValueMapper.ensureInitialized()
        .equalsValue(this as SelectableValue, other);
  }

  @override
  int get hashCode {
    return SelectableValueMapper.ensureInitialized()
        .hashValue(this as SelectableValue);
  }
}

extension SelectableValueValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectableValue, $Out> {
  SelectableValueCopyWith<$R, SelectableValue, $Out> get $asSelectableValue =>
      $base.as((v, t, t2) => _SelectableValueCopyWithImpl(v, t, t2));
}

abstract class SelectableValueCopyWith<$R, $In extends SelectableValue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? parameterId,
      String? value,
      String? title,
      DateTime? updatedAt,
      DateTime? createdAt});
  SelectableValueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SelectableValueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectableValue, $Out>
    implements SelectableValueCopyWith<$R, SelectableValue, $Out> {
  _SelectableValueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectableValue> $mapper =
      SelectableValueMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? parameterId,
          String? value,
          String? title,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (parameterId != null) #parameterId: parameterId,
        if (value != null) #value: value,
        if (title != null) #title: title,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  SelectableValue $make(CopyWithData data) => SelectableValue(
      id: data.get(#id, or: $value.id),
      parameterId: data.get(#parameterId, or: $value.parameterId),
      value: data.get(#value, or: $value.value),
      title: data.get(#title, or: $value.title),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  SelectableValueCopyWith<$R2, SelectableValue, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SelectableValueCopyWithImpl($value, $cast, t);
}
