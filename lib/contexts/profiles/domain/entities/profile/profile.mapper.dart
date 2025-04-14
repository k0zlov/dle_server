// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'profile.dart';

class ProfileMapper extends ClassMapperBase<Profile> {
  ProfileMapper._();

  static ProfileMapper? _instance;
  static ProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProfileMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Profile';

  static String _$id(Profile v) => v.id;
  static const Field<Profile, String> _f$id = Field('id', _$id, opt: true);
  static String _$userId(Profile v) => v.userId;
  static const Field<Profile, String> _f$userId = Field('userId', _$userId);
  static bool _$isSetUp(Profile v) => v.isSetUp;
  static const Field<Profile, bool> _f$isSetUp = Field('isSetUp', _$isSetUp);
  static String _$username(Profile v) => v.username;
  static const Field<Profile, String> _f$username =
      Field('username', _$username);
  static String? _$pictureId(Profile v) => v.pictureId;
  static const Field<Profile, String> _f$pictureId =
      Field('pictureId', _$pictureId);
  static DateTime _$updatedAt(Profile v) => v.updatedAt;
  static const Field<Profile, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(Profile v) => v.createdAt;
  static const Field<Profile, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<Profile> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #isSetUp: _f$isSetUp,
    #username: _f$username,
    #pictureId: _f$pictureId,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static Profile _instantiate(DecodingData data) {
    return Profile(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        isSetUp: data.dec(_f$isSetUp),
        username: data.dec(_f$username),
        pictureId: data.dec(_f$pictureId),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Profile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Profile>(map);
  }

  static Profile fromJson(String json) {
    return ensureInitialized().decodeJson<Profile>(json);
  }
}

mixin ProfileMappable {
  String toJson() {
    return ProfileMapper.ensureInitialized()
        .encodeJson<Profile>(this as Profile);
  }

  Map<String, dynamic> toMap() {
    return ProfileMapper.ensureInitialized()
        .encodeMap<Profile>(this as Profile);
  }

  ProfileCopyWith<Profile, Profile, Profile> get copyWith =>
      _ProfileCopyWithImpl(this as Profile, $identity, $identity);
  @override
  String toString() {
    return ProfileMapper.ensureInitialized().stringifyValue(this as Profile);
  }

  @override
  bool operator ==(Object other) {
    return ProfileMapper.ensureInitialized()
        .equalsValue(this as Profile, other);
  }

  @override
  int get hashCode {
    return ProfileMapper.ensureInitialized().hashValue(this as Profile);
  }
}

extension ProfileValueCopy<$R, $Out> on ObjectCopyWith<$R, Profile, $Out> {
  ProfileCopyWith<$R, Profile, $Out> get $asProfile =>
      $base.as((v, t, t2) => _ProfileCopyWithImpl(v, t, t2));
}

abstract class ProfileCopyWith<$R, $In extends Profile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? userId,
      bool? isSetUp,
      String? username,
      String? pictureId,
      DateTime? updatedAt,
      DateTime? createdAt});
  ProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Profile, $Out>
    implements ProfileCopyWith<$R, Profile, $Out> {
  _ProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Profile> $mapper =
      ProfileMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? userId,
          bool? isSetUp,
          String? username,
          Object? pictureId = $none,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (userId != null) #userId: userId,
        if (isSetUp != null) #isSetUp: isSetUp,
        if (username != null) #username: username,
        if (pictureId != $none) #pictureId: pictureId,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  Profile $make(CopyWithData data) => Profile(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      isSetUp: data.get(#isSetUp, or: $value.isSetUp),
      username: data.get(#username, or: $value.username),
      pictureId: data.get(#pictureId, or: $value.pictureId),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ProfileCopyWith<$R2, Profile, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProfileCopyWithImpl($value, $cast, t);
}
