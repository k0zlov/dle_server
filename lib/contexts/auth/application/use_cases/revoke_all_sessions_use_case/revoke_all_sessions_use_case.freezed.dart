// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revoke_all_sessions_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RevokeAllSessionsParams _$RevokeAllSessionsParamsFromJson(
    Map<String, dynamic> json) {
  return _RevokeAllSessionsParams.fromJson(json);
}

/// @nodoc
mixin _$RevokeAllSessionsParams {
  String get userId => throw _privateConstructorUsedError;
  String get sourceSessionId => throw _privateConstructorUsedError;

  /// Serializes this RevokeAllSessionsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RevokeAllSessionsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevokeAllSessionsParamsCopyWith<RevokeAllSessionsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevokeAllSessionsParamsCopyWith<$Res> {
  factory $RevokeAllSessionsParamsCopyWith(RevokeAllSessionsParams value,
          $Res Function(RevokeAllSessionsParams) then) =
      _$RevokeAllSessionsParamsCopyWithImpl<$Res, RevokeAllSessionsParams>;
  @useResult
  $Res call({String userId, String sourceSessionId});
}

/// @nodoc
class _$RevokeAllSessionsParamsCopyWithImpl<$Res,
        $Val extends RevokeAllSessionsParams>
    implements $RevokeAllSessionsParamsCopyWith<$Res> {
  _$RevokeAllSessionsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RevokeAllSessionsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sourceSessionId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSessionId: null == sourceSessionId
          ? _value.sourceSessionId
          : sourceSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevokeAllSessionsParamsImplCopyWith<$Res>
    implements $RevokeAllSessionsParamsCopyWith<$Res> {
  factory _$$RevokeAllSessionsParamsImplCopyWith(
          _$RevokeAllSessionsParamsImpl value,
          $Res Function(_$RevokeAllSessionsParamsImpl) then) =
      __$$RevokeAllSessionsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String sourceSessionId});
}

/// @nodoc
class __$$RevokeAllSessionsParamsImplCopyWithImpl<$Res>
    extends _$RevokeAllSessionsParamsCopyWithImpl<$Res,
        _$RevokeAllSessionsParamsImpl>
    implements _$$RevokeAllSessionsParamsImplCopyWith<$Res> {
  __$$RevokeAllSessionsParamsImplCopyWithImpl(
      _$RevokeAllSessionsParamsImpl _value,
      $Res Function(_$RevokeAllSessionsParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevokeAllSessionsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sourceSessionId = null,
  }) {
    return _then(_$RevokeAllSessionsParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSessionId: null == sourceSessionId
          ? _value.sourceSessionId
          : sourceSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevokeAllSessionsParamsImpl implements _RevokeAllSessionsParams {
  const _$RevokeAllSessionsParamsImpl(
      {required this.userId, required this.sourceSessionId});

  factory _$RevokeAllSessionsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevokeAllSessionsParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String sourceSessionId;

  @override
  String toString() {
    return 'RevokeAllSessionsParams(userId: $userId, sourceSessionId: $sourceSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevokeAllSessionsParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sourceSessionId, sourceSessionId) ||
                other.sourceSessionId == sourceSessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, sourceSessionId);

  /// Create a copy of RevokeAllSessionsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevokeAllSessionsParamsImplCopyWith<_$RevokeAllSessionsParamsImpl>
      get copyWith => __$$RevokeAllSessionsParamsImplCopyWithImpl<
          _$RevokeAllSessionsParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevokeAllSessionsParamsImplToJson(
      this,
    );
  }
}

abstract class _RevokeAllSessionsParams implements RevokeAllSessionsParams {
  const factory _RevokeAllSessionsParams(
      {required final String userId,
      required final String sourceSessionId}) = _$RevokeAllSessionsParamsImpl;

  factory _RevokeAllSessionsParams.fromJson(Map<String, dynamic> json) =
      _$RevokeAllSessionsParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get sourceSessionId;

  /// Create a copy of RevokeAllSessionsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevokeAllSessionsParamsImplCopyWith<_$RevokeAllSessionsParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
