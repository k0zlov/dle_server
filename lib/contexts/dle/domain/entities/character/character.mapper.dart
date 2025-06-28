// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character.dart';

class CharacterMapper extends ClassMapperBase<Character> {
  CharacterMapper._();

  static CharacterMapper? _instance;
  static CharacterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Character';

  static String _$id(Character v) => v.id;
  static const Field<Character, String> _f$id = Field('id', _$id, opt: true);
  static String _$dleId(Character v) => v.dleId;
  static const Field<Character, String> _f$dleId = Field('dleId', _$dleId);
  static String _$name(Character v) => v.name;
  static const Field<Character, String> _f$name = Field('name', _$name);
  static List<String> _$aliases(Character v) => v.aliases;
  static const Field<Character, List<String>> _f$aliases =
      Field('aliases', _$aliases);
  static String? _$assetId(Character v) => v.assetId;
  static const Field<Character, String> _f$assetId =
      Field('assetId', _$assetId);
  static bool _$isHidden(Character v) => v.isHidden;
  static const Field<Character, bool> _f$isHidden =
      Field('isHidden', _$isHidden);
  static DateTime _$updatedAt(Character v) => v.updatedAt;
  static const Field<Character, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(Character v) => v.createdAt;
  static const Field<Character, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<Character> fields = const {
    #id: _f$id,
    #dleId: _f$dleId,
    #name: _f$name,
    #aliases: _f$aliases,
    #assetId: _f$assetId,
    #isHidden: _f$isHidden,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static Character _instantiate(DecodingData data) {
    return Character(
        id: data.dec(_f$id),
        dleId: data.dec(_f$dleId),
        name: data.dec(_f$name),
        aliases: data.dec(_f$aliases),
        assetId: data.dec(_f$assetId),
        isHidden: data.dec(_f$isHidden),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Character fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Character>(map);
  }

  static Character fromJson(String json) {
    return ensureInitialized().decodeJson<Character>(json);
  }
}

mixin CharacterMappable {
  String toJson() {
    return CharacterMapper.ensureInitialized()
        .encodeJson<Character>(this as Character);
  }

  Map<String, dynamic> toMap() {
    return CharacterMapper.ensureInitialized()
        .encodeMap<Character>(this as Character);
  }

  CharacterCopyWith<Character, Character, Character> get copyWith =>
      _CharacterCopyWithImpl(this as Character, $identity, $identity);
  @override
  String toString() {
    return CharacterMapper.ensureInitialized()
        .stringifyValue(this as Character);
  }

  @override
  bool operator ==(Object other) {
    return CharacterMapper.ensureInitialized()
        .equalsValue(this as Character, other);
  }

  @override
  int get hashCode {
    return CharacterMapper.ensureInitialized().hashValue(this as Character);
  }
}

extension CharacterValueCopy<$R, $Out> on ObjectCopyWith<$R, Character, $Out> {
  CharacterCopyWith<$R, Character, $Out> get $asCharacter =>
      $base.as((v, t, t2) => _CharacterCopyWithImpl(v, t, t2));
}

abstract class CharacterCopyWith<$R, $In extends Character, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get aliases;
  $R call(
      {String? id,
      String? dleId,
      String? name,
      List<String>? aliases,
      String? assetId,
      bool? isHidden,
      DateTime? updatedAt,
      DateTime? createdAt});
  CharacterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CharacterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Character, $Out>
    implements CharacterCopyWith<$R, Character, $Out> {
  _CharacterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Character> $mapper =
      CharacterMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get aliases =>
      ListCopyWith($value.aliases, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(aliases: v));
  @override
  $R call(
          {Object? id = $none,
          String? dleId,
          String? name,
          List<String>? aliases,
          Object? assetId = $none,
          bool? isHidden,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (dleId != null) #dleId: dleId,
        if (name != null) #name: name,
        if (aliases != null) #aliases: aliases,
        if (assetId != $none) #assetId: assetId,
        if (isHidden != null) #isHidden: isHidden,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  Character $make(CopyWithData data) => Character(
      id: data.get(#id, or: $value.id),
      dleId: data.get(#dleId, or: $value.dleId),
      name: data.get(#name, or: $value.name),
      aliases: data.get(#aliases, or: $value.aliases),
      assetId: data.get(#assetId, or: $value.assetId),
      isHidden: data.get(#isHidden, or: $value.isHidden),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  CharacterCopyWith<$R2, Character, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CharacterCopyWithImpl($value, $cast, t);
}
