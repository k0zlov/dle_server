// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthSessionDto _$AuthSessionDtoFromJson(Map<String, dynamic> json) {
  return _AuthSessionDto.fromJson(json);
}

/// @nodoc
mixin _$AuthSessionDto {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AuthSessionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthSessionDtoCopyWith<AuthSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSessionDtoCopyWith<$Res> {
  factory $AuthSessionDtoCopyWith(
          AuthSessionDto value, $Res Function(AuthSessionDto) then) =
      _$AuthSessionDtoCopyWithImpl<$Res, AuthSessionDto>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String ip,
      String deviceInfo,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class _$AuthSessionDtoCopyWithImpl<$Res, $Val extends AuthSessionDto>
    implements $AuthSessionDtoCopyWith<$Res> {
  _$AuthSessionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? ip = null,
    Object? deviceInfo = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSessionDtoImplCopyWith<$Res>
    implements $AuthSessionDtoCopyWith<$Res> {
  factory _$$AuthSessionDtoImplCopyWith(_$AuthSessionDtoImpl value,
          $Res Function(_$AuthSessionDtoImpl) then) =
      __$$AuthSessionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String ip,
      String deviceInfo,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class __$$AuthSessionDtoImplCopyWithImpl<$Res>
    extends _$AuthSessionDtoCopyWithImpl<$Res, _$AuthSessionDtoImpl>
    implements _$$AuthSessionDtoImplCopyWith<$Res> {
  __$$AuthSessionDtoImplCopyWithImpl(
      _$AuthSessionDtoImpl _value, $Res Function(_$AuthSessionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? ip = null,
    Object? deviceInfo = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$AuthSessionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthSessionDtoImpl implements _AuthSessionDto {
  const _$AuthSessionDtoImpl(
      {required this.id,
      required this.userId,
      required this.ip,
      required this.deviceInfo,
      required this.updatedAt,
      required this.createdAt});

  factory _$AuthSessionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthSessionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String ip;
  @override
  final String deviceInfo;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'AuthSessionDto(id: $id, userId: $userId, ip: $ip, deviceInfo: $deviceInfo, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSessionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, ip, deviceInfo, updatedAt, createdAt);

  /// Create a copy of AuthSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSessionDtoImplCopyWith<_$AuthSessionDtoImpl> get copyWith =>
      __$$AuthSessionDtoImplCopyWithImpl<_$AuthSessionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthSessionDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthSessionDto implements AuthSessionDto {
  const factory _AuthSessionDto(
      {required final String id,
      required final String userId,
      required final String ip,
      required final String deviceInfo,
      required final DateTime updatedAt,
      required final DateTime createdAt}) = _$AuthSessionDtoImpl;

  factory _AuthSessionDto.fromJson(Map<String, dynamic> json) =
      _$AuthSessionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get ip;
  @override
  String get deviceInfo;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of AuthSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSessionDtoImplCopyWith<_$AuthSessionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
