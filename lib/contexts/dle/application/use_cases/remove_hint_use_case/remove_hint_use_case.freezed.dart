// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_hint_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveHintParams _$RemoveHintParamsFromJson(Map<String, dynamic> json) {
  return _RemoveHintParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveHintParams {
  String get userId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get hintId => throw _privateConstructorUsedError;

  /// Serializes this RemoveHintParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveHintParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveHintParamsCopyWith<RemoveHintParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveHintParamsCopyWith<$Res> {
  factory $RemoveHintParamsCopyWith(
          RemoveHintParams value, $Res Function(RemoveHintParams) then) =
      _$RemoveHintParamsCopyWithImpl<$Res, RemoveHintParams>;
  @useResult
  $Res call({String userId, String dleId, String hintId});
}

/// @nodoc
class _$RemoveHintParamsCopyWithImpl<$Res, $Val extends RemoveHintParams>
    implements $RemoveHintParamsCopyWith<$Res> {
  _$RemoveHintParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveHintParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? hintId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      hintId: null == hintId
          ? _value.hintId
          : hintId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveHintParamsImplCopyWith<$Res>
    implements $RemoveHintParamsCopyWith<$Res> {
  factory _$$RemoveHintParamsImplCopyWith(_$RemoveHintParamsImpl value,
          $Res Function(_$RemoveHintParamsImpl) then) =
      __$$RemoveHintParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String dleId, String hintId});
}

/// @nodoc
class __$$RemoveHintParamsImplCopyWithImpl<$Res>
    extends _$RemoveHintParamsCopyWithImpl<$Res, _$RemoveHintParamsImpl>
    implements _$$RemoveHintParamsImplCopyWith<$Res> {
  __$$RemoveHintParamsImplCopyWithImpl(_$RemoveHintParamsImpl _value,
      $Res Function(_$RemoveHintParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveHintParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? hintId = null,
  }) {
    return _then(_$RemoveHintParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      hintId: null == hintId
          ? _value.hintId
          : hintId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveHintParamsImpl implements _RemoveHintParams {
  const _$RemoveHintParamsImpl(
      {required this.userId, required this.dleId, required this.hintId});

  factory _$RemoveHintParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveHintParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;
  @override
  final String hintId;

  @override
  String toString() {
    return 'RemoveHintParams(userId: $userId, dleId: $dleId, hintId: $hintId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveHintParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.hintId, hintId) || other.hintId == hintId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId, hintId);

  /// Create a copy of RemoveHintParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveHintParamsImplCopyWith<_$RemoveHintParamsImpl> get copyWith =>
      __$$RemoveHintParamsImplCopyWithImpl<_$RemoveHintParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveHintParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveHintParams implements RemoveHintParams {
  const factory _RemoveHintParams(
      {required final String userId,
      required final String dleId,
      required final String hintId}) = _$RemoveHintParamsImpl;

  factory _RemoveHintParams.fromJson(Map<String, dynamic> json) =
      _$RemoveHintParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;
  @override
  String get hintId;

  /// Create a copy of RemoveHintParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveHintParamsImplCopyWith<_$RemoveHintParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
