// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character_parameter.dart';

class CharacterParameterMapper extends ClassMapperBase<CharacterParameter> {
  CharacterParameterMapper._();

  static CharacterParameterMapper? _instance;
  static CharacterParameterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterParameterMapper._());
      ParameterValueMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterParameter';

  static String _$id(CharacterParameter v) => v.id;
  static const Field<CharacterParameter, String> _f$id =
      Field('id', _$id, opt: true);
  static String _$characterId(CharacterParameter v) => v.characterId;
  static const Field<CharacterParameter, String> _f$characterId =
      Field('characterId', _$characterId);
  static String _$parameterId(CharacterParameter v) => v.parameterId;
  static const Field<CharacterParameter, String> _f$parameterId =
      Field('parameterId', _$parameterId);
  static ParameterValue? _$value(CharacterParameter v) => v.value;
  static const Field<CharacterParameter, ParameterValue> _f$value =
      Field('value', _$value);
  static int _$index(CharacterParameter v) => v.index;
  static const Field<CharacterParameter, int> _f$index =
      Field('index', _$index);
  static String? _$selectableId(CharacterParameter v) => v.selectableId;
  static const Field<CharacterParameter, String> _f$selectableId =
      Field('selectableId', _$selectableId);
  static DateTime _$updatedAt(CharacterParameter v) => v.updatedAt;
  static const Field<CharacterParameter, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(CharacterParameter v) => v.createdAt;
  static const Field<CharacterParameter, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<CharacterParameter> fields = const {
    #id: _f$id,
    #characterId: _f$characterId,
    #parameterId: _f$parameterId,
    #value: _f$value,
    #index: _f$index,
    #selectableId: _f$selectableId,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static CharacterParameter _instantiate(DecodingData data) {
    return CharacterParameter(
        id: data.dec(_f$id),
        characterId: data.dec(_f$characterId),
        parameterId: data.dec(_f$parameterId),
        value: data.dec(_f$value),
        index: data.dec(_f$index),
        selectableId: data.dec(_f$selectableId),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterParameter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterParameter>(map);
  }

  static CharacterParameter fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterParameter>(json);
  }
}

mixin CharacterParameterMappable {
  String toJson() {
    return CharacterParameterMapper.ensureInitialized()
        .encodeJson<CharacterParameter>(this as CharacterParameter);
  }

  Map<String, dynamic> toMap() {
    return CharacterParameterMapper.ensureInitialized()
        .encodeMap<CharacterParameter>(this as CharacterParameter);
  }

  CharacterParameterCopyWith<CharacterParameter, CharacterParameter,
          CharacterParameter>
      get copyWith => _CharacterParameterCopyWithImpl(
          this as CharacterParameter, $identity, $identity);
  @override
  String toString() {
    return CharacterParameterMapper.ensureInitialized()
        .stringifyValue(this as CharacterParameter);
  }

  @override
  bool operator ==(Object other) {
    return CharacterParameterMapper.ensureInitialized()
        .equalsValue(this as CharacterParameter, other);
  }

  @override
  int get hashCode {
    return CharacterParameterMapper.ensureInitialized()
        .hashValue(this as CharacterParameter);
  }
}

extension CharacterParameterValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterParameter, $Out> {
  CharacterParameterCopyWith<$R, CharacterParameter, $Out>
      get $asCharacterParameter =>
          $base.as((v, t, t2) => _CharacterParameterCopyWithImpl(v, t, t2));
}

abstract class CharacterParameterCopyWith<$R, $In extends CharacterParameter,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ParameterValueCopyWith<$R, ParameterValue, ParameterValue>? get value;
  $R call(
      {String? id,
      String? characterId,
      String? parameterId,
      ParameterValue? value,
      int? index,
      String? selectableId,
      DateTime? updatedAt,
      DateTime? createdAt});
  CharacterParameterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CharacterParameterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterParameter, $Out>
    implements CharacterParameterCopyWith<$R, CharacterParameter, $Out> {
  _CharacterParameterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterParameter> $mapper =
      CharacterParameterMapper.ensureInitialized();
  @override
  ParameterValueCopyWith<$R, ParameterValue, ParameterValue>? get value =>
      $value.value?.copyWith.$chain((v) => call(value: v));
  @override
  $R call(
          {Object? id = $none,
          String? characterId,
          String? parameterId,
          Object? value = $none,
          int? index,
          Object? selectableId = $none,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (characterId != null) #characterId: characterId,
        if (parameterId != null) #parameterId: parameterId,
        if (value != $none) #value: value,
        if (index != null) #index: index,
        if (selectableId != $none) #selectableId: selectableId,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  CharacterParameter $make(CopyWithData data) => CharacterParameter(
      id: data.get(#id, or: $value.id),
      characterId: data.get(#characterId, or: $value.characterId),
      parameterId: data.get(#parameterId, or: $value.parameterId),
      value: data.get(#value, or: $value.value),
      index: data.get(#index, or: $value.index),
      selectableId: data.get(#selectableId, or: $value.selectableId),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  CharacterParameterCopyWith<$R2, CharacterParameter, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CharacterParameterCopyWithImpl($value, $cast, t);
}
