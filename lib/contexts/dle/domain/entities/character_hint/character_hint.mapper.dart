// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character_hint.dart';

class CharacterHintMapper extends ClassMapperBase<CharacterHint> {
  CharacterHintMapper._();

  static CharacterHintMapper? _instance;
  static CharacterHintMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterHintMapper._());
      HintValueMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterHint';

  static String _$id(CharacterHint v) => v.id;
  static const Field<CharacterHint, String> _f$id =
      Field('id', _$id, opt: true);
  static String _$hintId(CharacterHint v) => v.hintId;
  static const Field<CharacterHint, String> _f$hintId =
      Field('hintId', _$hintId);
  static String _$characterId(CharacterHint v) => v.characterId;
  static const Field<CharacterHint, String> _f$characterId =
      Field('characterId', _$characterId);
  static HintValue _$value(CharacterHint v) => v.value;
  static const Field<CharacterHint, HintValue> _f$value =
      Field('value', _$value);
  static DateTime _$updatedAt(CharacterHint v) => v.updatedAt;
  static const Field<CharacterHint, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(CharacterHint v) => v.createdAt;
  static const Field<CharacterHint, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<CharacterHint> fields = const {
    #id: _f$id,
    #hintId: _f$hintId,
    #characterId: _f$characterId,
    #value: _f$value,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static CharacterHint _instantiate(DecodingData data) {
    return CharacterHint(
        id: data.dec(_f$id),
        hintId: data.dec(_f$hintId),
        characterId: data.dec(_f$characterId),
        value: data.dec(_f$value),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterHint fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterHint>(map);
  }

  static CharacterHint fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterHint>(json);
  }
}

mixin CharacterHintMappable {
  String toJson() {
    return CharacterHintMapper.ensureInitialized()
        .encodeJson<CharacterHint>(this as CharacterHint);
  }

  Map<String, dynamic> toMap() {
    return CharacterHintMapper.ensureInitialized()
        .encodeMap<CharacterHint>(this as CharacterHint);
  }

  CharacterHintCopyWith<CharacterHint, CharacterHint, CharacterHint>
      get copyWith => _CharacterHintCopyWithImpl(
          this as CharacterHint, $identity, $identity);
  @override
  String toString() {
    return CharacterHintMapper.ensureInitialized()
        .stringifyValue(this as CharacterHint);
  }

  @override
  bool operator ==(Object other) {
    return CharacterHintMapper.ensureInitialized()
        .equalsValue(this as CharacterHint, other);
  }

  @override
  int get hashCode {
    return CharacterHintMapper.ensureInitialized()
        .hashValue(this as CharacterHint);
  }
}

extension CharacterHintValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterHint, $Out> {
  CharacterHintCopyWith<$R, CharacterHint, $Out> get $asCharacterHint =>
      $base.as((v, t, t2) => _CharacterHintCopyWithImpl(v, t, t2));
}

abstract class CharacterHintCopyWith<$R, $In extends CharacterHint, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  HintValueCopyWith<$R, HintValue, HintValue> get value;
  $R call(
      {String? id,
      String? hintId,
      String? characterId,
      HintValue? value,
      DateTime? updatedAt,
      DateTime? createdAt});
  CharacterHintCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CharacterHintCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterHint, $Out>
    implements CharacterHintCopyWith<$R, CharacterHint, $Out> {
  _CharacterHintCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterHint> $mapper =
      CharacterHintMapper.ensureInitialized();
  @override
  HintValueCopyWith<$R, HintValue, HintValue> get value =>
      $value.value.copyWith.$chain((v) => call(value: v));
  @override
  $R call(
          {Object? id = $none,
          String? hintId,
          String? characterId,
          HintValue? value,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (hintId != null) #hintId: hintId,
        if (characterId != null) #characterId: characterId,
        if (value != null) #value: value,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  CharacterHint $make(CopyWithData data) => CharacterHint(
      id: data.get(#id, or: $value.id),
      hintId: data.get(#hintId, or: $value.hintId),
      characterId: data.get(#characterId, or: $value.characterId),
      value: data.get(#value, or: $value.value),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  CharacterHintCopyWith<$R2, CharacterHint, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CharacterHintCopyWithImpl($value, $cast, t);
}
