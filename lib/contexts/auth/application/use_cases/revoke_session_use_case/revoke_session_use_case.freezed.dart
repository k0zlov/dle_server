// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revoke_session_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RevokeSessionParams _$RevokeSessionParamsFromJson(Map<String, dynamic> json) {
  return _RevokeSessionParams.fromJson(json);
}

/// @nodoc
mixin _$RevokeSessionParams {
  String get userId => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;

  /// Serializes this RevokeSessionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RevokeSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevokeSessionParamsCopyWith<RevokeSessionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevokeSessionParamsCopyWith<$Res> {
  factory $RevokeSessionParamsCopyWith(
          RevokeSessionParams value, $Res Function(RevokeSessionParams) then) =
      _$RevokeSessionParamsCopyWithImpl<$Res, RevokeSessionParams>;
  @useResult
  $Res call({String userId, String sessionId});
}

/// @nodoc
class _$RevokeSessionParamsCopyWithImpl<$Res, $Val extends RevokeSessionParams>
    implements $RevokeSessionParamsCopyWith<$Res> {
  _$RevokeSessionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RevokeSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevokeSessionParamsImplCopyWith<$Res>
    implements $RevokeSessionParamsCopyWith<$Res> {
  factory _$$RevokeSessionParamsImplCopyWith(_$RevokeSessionParamsImpl value,
          $Res Function(_$RevokeSessionParamsImpl) then) =
      __$$RevokeSessionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String sessionId});
}

/// @nodoc
class __$$RevokeSessionParamsImplCopyWithImpl<$Res>
    extends _$RevokeSessionParamsCopyWithImpl<$Res, _$RevokeSessionParamsImpl>
    implements _$$RevokeSessionParamsImplCopyWith<$Res> {
  __$$RevokeSessionParamsImplCopyWithImpl(_$RevokeSessionParamsImpl _value,
      $Res Function(_$RevokeSessionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevokeSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sessionId = null,
  }) {
    return _then(_$RevokeSessionParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevokeSessionParamsImpl implements _RevokeSessionParams {
  const _$RevokeSessionParamsImpl(
      {required this.userId, required this.sessionId});

  factory _$RevokeSessionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevokeSessionParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String sessionId;

  @override
  String toString() {
    return 'RevokeSessionParams(userId: $userId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevokeSessionParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, sessionId);

  /// Create a copy of RevokeSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevokeSessionParamsImplCopyWith<_$RevokeSessionParamsImpl> get copyWith =>
      __$$RevokeSessionParamsImplCopyWithImpl<_$RevokeSessionParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevokeSessionParamsImplToJson(
      this,
    );
  }
}

abstract class _RevokeSessionParams implements RevokeSessionParams {
  const factory _RevokeSessionParams(
      {required final String userId,
      required final String sessionId}) = _$RevokeSessionParamsImpl;

  factory _RevokeSessionParams.fromJson(Map<String, dynamic> json) =
      _$RevokeSessionParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get sessionId;

  /// Create a copy of RevokeSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevokeSessionParamsImplCopyWith<_$RevokeSessionParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
