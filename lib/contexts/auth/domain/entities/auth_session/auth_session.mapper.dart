// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_session.dart';

class AuthSessionMapper extends ClassMapperBase<AuthSession> {
  AuthSessionMapper._();

  static AuthSessionMapper? _instance;
  static AuthSessionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthSessionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthSession';

  static String _$id(AuthSession v) => v.id;
  static const Field<AuthSession, String> _f$id = Field('id', _$id, opt: true);
  static String _$userId(AuthSession v) => v.userId;
  static const Field<AuthSession, String> _f$userId = Field('userId', _$userId);
  static String _$ip(AuthSession v) => v.ip;
  static const Field<AuthSession, String> _f$ip = Field('ip', _$ip);
  static String _$refreshToken(AuthSession v) => v.refreshToken;
  static const Field<AuthSession, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken);
  static String _$deviceInfo(AuthSession v) => v.deviceInfo;
  static const Field<AuthSession, String> _f$deviceInfo =
      Field('deviceInfo', _$deviceInfo);
  static DateTime _$expiresAt(AuthSession v) => v.expiresAt;
  static const Field<AuthSession, DateTime> _f$expiresAt =
      Field('expiresAt', _$expiresAt);
  static DateTime _$updatedAt(AuthSession v) => v.updatedAt;
  static const Field<AuthSession, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(AuthSession v) => v.createdAt;
  static const Field<AuthSession, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<AuthSession> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #ip: _f$ip,
    #refreshToken: _f$refreshToken,
    #deviceInfo: _f$deviceInfo,
    #expiresAt: _f$expiresAt,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static AuthSession _instantiate(DecodingData data) {
    return AuthSession(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        ip: data.dec(_f$ip),
        refreshToken: data.dec(_f$refreshToken),
        deviceInfo: data.dec(_f$deviceInfo),
        expiresAt: data.dec(_f$expiresAt),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthSession fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthSession>(map);
  }

  static AuthSession fromJson(String json) {
    return ensureInitialized().decodeJson<AuthSession>(json);
  }
}

mixin AuthSessionMappable {
  String toJson() {
    return AuthSessionMapper.ensureInitialized()
        .encodeJson<AuthSession>(this as AuthSession);
  }

  Map<String, dynamic> toMap() {
    return AuthSessionMapper.ensureInitialized()
        .encodeMap<AuthSession>(this as AuthSession);
  }

  AuthSessionCopyWith<AuthSession, AuthSession, AuthSession> get copyWith =>
      _AuthSessionCopyWithImpl(this as AuthSession, $identity, $identity);
  @override
  String toString() {
    return AuthSessionMapper.ensureInitialized()
        .stringifyValue(this as AuthSession);
  }

  @override
  bool operator ==(Object other) {
    return AuthSessionMapper.ensureInitialized()
        .equalsValue(this as AuthSession, other);
  }

  @override
  int get hashCode {
    return AuthSessionMapper.ensureInitialized().hashValue(this as AuthSession);
  }
}

extension AuthSessionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthSession, $Out> {
  AuthSessionCopyWith<$R, AuthSession, $Out> get $asAuthSession =>
      $base.as((v, t, t2) => _AuthSessionCopyWithImpl(v, t, t2));
}

abstract class AuthSessionCopyWith<$R, $In extends AuthSession, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? userId,
      String? ip,
      String? refreshToken,
      String? deviceInfo,
      DateTime? expiresAt,
      DateTime? updatedAt,
      DateTime? createdAt});
  AuthSessionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthSessionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthSession, $Out>
    implements AuthSessionCopyWith<$R, AuthSession, $Out> {
  _AuthSessionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthSession> $mapper =
      AuthSessionMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? userId,
          String? ip,
          String? refreshToken,
          String? deviceInfo,
          DateTime? expiresAt,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (userId != null) #userId: userId,
        if (ip != null) #ip: ip,
        if (refreshToken != null) #refreshToken: refreshToken,
        if (deviceInfo != null) #deviceInfo: deviceInfo,
        if (expiresAt != null) #expiresAt: expiresAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  AuthSession $make(CopyWithData data) => AuthSession(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      ip: data.get(#ip, or: $value.ip),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      deviceInfo: data.get(#deviceInfo, or: $value.deviceInfo),
      expiresAt: data.get(#expiresAt, or: $value.expiresAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  AuthSessionCopyWith<$R2, AuthSession, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthSessionCopyWithImpl($value, $cast, t);
}
