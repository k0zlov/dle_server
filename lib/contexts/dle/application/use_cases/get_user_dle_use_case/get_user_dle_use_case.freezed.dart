// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_dle_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserDleParams _$GetUserDleParamsFromJson(Map<String, dynamic> json) {
  return _GetUserDleParams.fromJson(json);
}

/// @nodoc
mixin _$GetUserDleParams {
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this GetUserDleParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUserDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserDleParamsCopyWith<GetUserDleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDleParamsCopyWith<$Res> {
  factory $GetUserDleParamsCopyWith(
          GetUserDleParams value, $Res Function(GetUserDleParams) then) =
      _$GetUserDleParamsCopyWithImpl<$Res, GetUserDleParams>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$GetUserDleParamsCopyWithImpl<$Res, $Val extends GetUserDleParams>
    implements $GetUserDleParamsCopyWith<$Res> {
  _$GetUserDleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserDleParamsImplCopyWith<$Res>
    implements $GetUserDleParamsCopyWith<$Res> {
  factory _$$GetUserDleParamsImplCopyWith(_$GetUserDleParamsImpl value,
          $Res Function(_$GetUserDleParamsImpl) then) =
      __$$GetUserDleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetUserDleParamsImplCopyWithImpl<$Res>
    extends _$GetUserDleParamsCopyWithImpl<$Res, _$GetUserDleParamsImpl>
    implements _$$GetUserDleParamsImplCopyWith<$Res> {
  __$$GetUserDleParamsImplCopyWithImpl(_$GetUserDleParamsImpl _value,
      $Res Function(_$GetUserDleParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetUserDleParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserDleParamsImpl implements _GetUserDleParams {
  const _$GetUserDleParamsImpl({required this.userId});

  factory _$GetUserDleParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserDleParamsImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'GetUserDleParams(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDleParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of GetUserDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDleParamsImplCopyWith<_$GetUserDleParamsImpl> get copyWith =>
      __$$GetUserDleParamsImplCopyWithImpl<_$GetUserDleParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserDleParamsImplToJson(
      this,
    );
  }
}

abstract class _GetUserDleParams implements GetUserDleParams {
  const factory _GetUserDleParams({required final String userId}) =
      _$GetUserDleParamsImpl;

  factory _GetUserDleParams.fromJson(Map<String, dynamic> json) =
      _$GetUserDleParamsImpl.fromJson;

  @override
  String get userId;

  /// Create a copy of GetUserDleParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserDleParamsImplCopyWith<_$GetUserDleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
