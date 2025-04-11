// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'password_reset_token.dart';

class PasswordResetTokenMapper extends ClassMapperBase<PasswordResetToken> {
  PasswordResetTokenMapper._();

  static PasswordResetTokenMapper? _instance;
  static PasswordResetTokenMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PasswordResetTokenMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PasswordResetToken';

  static String _$id(PasswordResetToken v) => v.id;
  static const Field<PasswordResetToken, String> _f$id =
      Field('id', _$id, opt: true);
  static String _$userId(PasswordResetToken v) => v.userId;
  static const Field<PasswordResetToken, String> _f$userId =
      Field('userId', _$userId);
  static DateTime _$expiresAt(PasswordResetToken v) => v.expiresAt;
  static const Field<PasswordResetToken, DateTime> _f$expiresAt =
      Field('expiresAt', _$expiresAt);
  static DateTime _$updatedAt(PasswordResetToken v) => v.updatedAt;
  static const Field<PasswordResetToken, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(PasswordResetToken v) => v.createdAt;
  static const Field<PasswordResetToken, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static bool _$isUsed(PasswordResetToken v) => v.isUsed;
  static const Field<PasswordResetToken, bool> _f$isUsed =
      Field('isUsed', _$isUsed);

  @override
  final MappableFields<PasswordResetToken> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #expiresAt: _f$expiresAt,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
    #isUsed: _f$isUsed,
  };

  static PasswordResetToken _instantiate(DecodingData data) {
    return PasswordResetToken(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        expiresAt: data.dec(_f$expiresAt),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt),
        isUsed: data.dec(_f$isUsed));
  }

  @override
  final Function instantiate = _instantiate;

  static PasswordResetToken fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PasswordResetToken>(map);
  }

  static PasswordResetToken fromJson(String json) {
    return ensureInitialized().decodeJson<PasswordResetToken>(json);
  }
}

mixin PasswordResetTokenMappable {
  String toJson() {
    return PasswordResetTokenMapper.ensureInitialized()
        .encodeJson<PasswordResetToken>(this as PasswordResetToken);
  }

  Map<String, dynamic> toMap() {
    return PasswordResetTokenMapper.ensureInitialized()
        .encodeMap<PasswordResetToken>(this as PasswordResetToken);
  }

  PasswordResetTokenCopyWith<PasswordResetToken, PasswordResetToken,
          PasswordResetToken>
      get copyWith => _PasswordResetTokenCopyWithImpl(
          this as PasswordResetToken, $identity, $identity);
  @override
  String toString() {
    return PasswordResetTokenMapper.ensureInitialized()
        .stringifyValue(this as PasswordResetToken);
  }

  @override
  bool operator ==(Object other) {
    return PasswordResetTokenMapper.ensureInitialized()
        .equalsValue(this as PasswordResetToken, other);
  }

  @override
  int get hashCode {
    return PasswordResetTokenMapper.ensureInitialized()
        .hashValue(this as PasswordResetToken);
  }
}

extension PasswordResetTokenValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PasswordResetToken, $Out> {
  PasswordResetTokenCopyWith<$R, PasswordResetToken, $Out>
      get $asPasswordResetToken =>
          $base.as((v, t, t2) => _PasswordResetTokenCopyWithImpl(v, t, t2));
}

abstract class PasswordResetTokenCopyWith<$R, $In extends PasswordResetToken,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? userId,
      DateTime? expiresAt,
      DateTime? updatedAt,
      DateTime? createdAt,
      bool? isUsed});
  PasswordResetTokenCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PasswordResetTokenCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PasswordResetToken, $Out>
    implements PasswordResetTokenCopyWith<$R, PasswordResetToken, $Out> {
  _PasswordResetTokenCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PasswordResetToken> $mapper =
      PasswordResetTokenMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? userId,
          DateTime? expiresAt,
          DateTime? updatedAt,
          DateTime? createdAt,
          bool? isUsed}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (userId != null) #userId: userId,
        if (expiresAt != null) #expiresAt: expiresAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (isUsed != null) #isUsed: isUsed
      }));
  @override
  PasswordResetToken $make(CopyWithData data) => PasswordResetToken(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      expiresAt: data.get(#expiresAt, or: $value.expiresAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      isUsed: data.get(#isUsed, or: $value.isUsed));

  @override
  PasswordResetTokenCopyWith<$R2, PasswordResetToken, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PasswordResetTokenCopyWithImpl($value, $cast, t);
}
