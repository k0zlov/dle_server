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

  static const Field<User, dynamic> _f$id =
      Field('id', null, mode: FieldMode.param, opt: true);
  static String _$email(User v) => v.email;
  static const Field<User, String> _f$email = Field('email', _$email);
  static String _$name(User v) => v.name;
  static const Field<User, String> _f$name = Field('name', _$name);
  static String _$surname(User v) => v.surname;
  static const Field<User, String> _f$surname = Field('surname', _$surname);
  static String _$passwordHash(User v) => v.passwordHash;
  static const Field<User, String> _f$passwordHash =
      Field('passwordHash', _$passwordHash);
  static DateTime _$updatedAt(User v) => v.updatedAt;
  static const Field<User, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(User v) => v.createdAt;
  static const Field<User, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static bool _$isBanned(User v) => v.isBanned;
  static const Field<User, bool> _f$isBanned = Field('isBanned', _$isBanned);
  static Set<AuthSession> _$sessions(User v) => v.sessions;
  static const Field<User, Set<AuthSession>> _f$sessions =
      Field('sessions', _$sessions, opt: true, def: const <AuthSession>{});

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #email: _f$email,
    #name: _f$name,
    #surname: _f$surname,
    #passwordHash: _f$passwordHash,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
    #isBanned: _f$isBanned,
    #sessions: _f$sessions,
  };

  static User _instantiate(DecodingData data) {
    return User(
        id: data.dec(_f$id),
        email: data.dec(_f$email),
        name: data.dec(_f$name),
        surname: data.dec(_f$surname),
        passwordHash: data.dec(_f$passwordHash),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt),
        isBanned: data.dec(_f$isBanned),
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
      {required dynamic id,
      String? email,
      String? name,
      String? surname,
      String? passwordHash,
      DateTime? updatedAt,
      DateTime? createdAt,
      bool? isBanned,
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
          {required dynamic id,
          String? email,
          String? name,
          String? surname,
          String? passwordHash,
          DateTime? updatedAt,
          DateTime? createdAt,
          bool? isBanned,
          Set<AuthSession>? sessions}) =>
      $apply(FieldCopyWithData({
        #id: id,
        if (email != null) #email: email,
        if (name != null) #name: name,
        if (surname != null) #surname: surname,
        if (passwordHash != null) #passwordHash: passwordHash,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (isBanned != null) #isBanned: isBanned,
        if (sessions != null) #sessions: sessions
      }));
  @override
  User $make(CopyWithData data) => User(
      id: data.get(#id),
      email: data.get(#email, or: $value.email),
      name: data.get(#name, or: $value.name),
      surname: data.get(#surname, or: $value.surname),
      passwordHash: data.get(#passwordHash, or: $value.passwordHash),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      isBanned: data.get(#isBanned, or: $value.isBanned),
      sessions: data.get(#sessions, or: $value.sessions));

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl($value, $cast, t);
}
