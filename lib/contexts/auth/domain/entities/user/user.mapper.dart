// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
      AuthSessionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static String _$id(User v) => v.id;
  static const Field<User, String> _f$id = Field('id', _$id, opt: true);
  static String _$email(User v) => v.email;
  static const Field<User, String> _f$email = Field('email', _$email);
  static String _$passwordHash(User v) => v.passwordHash;
  static const Field<User, String> _f$passwordHash =
      Field('passwordHash', _$passwordHash);
  static DateTime _$updatedAt(User v) => v.updatedAt;
  static const Field<User, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(User v) => v.createdAt;
  static const Field<User, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static bool _$emailVerified(User v) => v.emailVerified;
  static const Field<User, bool> _f$emailVerified =
      Field('emailVerified', _$emailVerified);
  static Set<AuthSession> _$sessions(User v) => v.sessions;
  static const Field<User, Set<AuthSession>> _f$sessions =
      Field('sessions', _$sessions, opt: true, def: const <AuthSession>{});

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #email: _f$email,
    #passwordHash: _f$passwordHash,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
    #emailVerified: _f$emailVerified,
    #sessions: _f$sessions,
  };

  static User _instantiate(DecodingData data) {
    return User(
        id: data.dec(_f$id),
        email: data.dec(_f$email),
        passwordHash: data.dec(_f$passwordHash),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt),
        emailVerified: data.dec(_f$emailVerified),
        sessions: data.dec(_f$sessions));
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? email,
      String? passwordHash,
      DateTime? updatedAt,
      DateTime? createdAt,
      bool? emailVerified,
      Set<AuthSession>? sessions});
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? email,
          String? passwordHash,
          DateTime? updatedAt,
          DateTime? createdAt,
          bool? emailVerified,
          Set<AuthSession>? sessions}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (email != null) #email: email,
        if (passwordHash != null) #passwordHash: passwordHash,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (emailVerified != null) #emailVerified: emailVerified,
        if (sessions != null) #sessions: sessions
      }));
  @override
  User $make(CopyWithData data) => User(
      id: data.get(#id, or: $value.id),
      email: data.get(#email, or: $value.email),
      passwordHash: data.get(#passwordHash, or: $value.passwordHash),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      emailVerified: data.get(#emailVerified, or: $value.emailVerified),
      sessions: data.get(#sessions, or: $value.sessions));

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl($value, $cast, t);
}
