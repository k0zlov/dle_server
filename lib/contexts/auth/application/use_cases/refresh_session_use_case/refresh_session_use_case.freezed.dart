// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_session_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshSessionParams _$RefreshSessionParamsFromJson(Map<String, dynamic> json) {
  return _RefreshSessionParams.fromJson(json);
}

/// @nodoc
mixin _$RefreshSessionParams {
  String get refreshToken => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;

  /// Serializes this RefreshSessionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshSessionParamsCopyWith<RefreshSessionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshSessionParamsCopyWith<$Res> {
  factory $RefreshSessionParamsCopyWith(RefreshSessionParams value,
          $Res Function(RefreshSessionParams) then) =
      _$RefreshSessionParamsCopyWithImpl<$Res, RefreshSessionParams>;
  @useResult
  $Res call({String refreshToken, String ip, String deviceInfo});
}

/// @nodoc
class _$RefreshSessionParamsCopyWithImpl<$Res,
        $Val extends RefreshSessionParams>
    implements $RefreshSessionParamsCopyWith<$Res> {
  _$RefreshSessionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? ip = null,
    Object? deviceInfo = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshSessionParamsImplCopyWith<$Res>
    implements $RefreshSessionParamsCopyWith<$Res> {
  factory _$$RefreshSessionParamsImplCopyWith(_$RefreshSessionParamsImpl value,
          $Res Function(_$RefreshSessionParamsImpl) then) =
      __$$RefreshSessionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken, String ip, String deviceInfo});
}

/// @nodoc
class __$$RefreshSessionParamsImplCopyWithImpl<$Res>
    extends _$RefreshSessionParamsCopyWithImpl<$Res, _$RefreshSessionParamsImpl>
    implements _$$RefreshSessionParamsImplCopyWith<$Res> {
  __$$RefreshSessionParamsImplCopyWithImpl(_$RefreshSessionParamsImpl _value,
      $Res Function(_$RefreshSessionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? ip = null,
    Object? deviceInfo = null,
  }) {
    return _then(_$RefreshSessionParamsImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshSessionParamsImpl implements _RefreshSessionParams {
  const _$RefreshSessionParamsImpl(
      {required this.refreshToken, required this.ip, required this.deviceInfo});

  factory _$RefreshSessionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshSessionParamsImplFromJson(json);

  @override
  final String refreshToken;
  @override
  final String ip;
  @override
  final String deviceInfo;

  @override
  String toString() {
    return 'RefreshSessionParams(refreshToken: $refreshToken, ip: $ip, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshSessionParamsImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, ip, deviceInfo);

  /// Create a copy of RefreshSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshSessionParamsImplCopyWith<_$RefreshSessionParamsImpl>
      get copyWith =>
          __$$RefreshSessionParamsImplCopyWithImpl<_$RefreshSessionParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshSessionParamsImplToJson(
      this,
    );
  }
}

abstract class _RefreshSessionParams implements RefreshSessionParams {
  const factory _RefreshSessionParams(
      {required final String refreshToken,
      required final String ip,
      required final String deviceInfo}) = _$RefreshSessionParamsImpl;

  factory _RefreshSessionParams.fromJson(Map<String, dynamic> json) =
      _$RefreshSessionParamsImpl.fromJson;

  @override
  String get refreshToken;
  @override
  String get ip;
  @override
  String get deviceInfo;

  /// Create a copy of RefreshSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshSessionParamsImplCopyWith<_$RefreshSessionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
