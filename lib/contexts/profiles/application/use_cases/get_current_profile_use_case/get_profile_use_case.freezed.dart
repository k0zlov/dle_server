// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProfileParams _$GetProfileParamsFromJson(Map<String, dynamic> json) {
  return _GetProfileParams.fromJson(json);
}

/// @nodoc
mixin _$GetProfileParams {
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this GetProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProfileParamsCopyWith<GetProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileParamsCopyWith<$Res> {
  factory $GetProfileParamsCopyWith(
          GetProfileParams value, $Res Function(GetProfileParams) then) =
      _$GetProfileParamsCopyWithImpl<$Res, GetProfileParams>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$GetProfileParamsCopyWithImpl<$Res, $Val extends GetProfileParams>
    implements $GetProfileParamsCopyWith<$Res> {
  _$GetProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProfileParams
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
abstract class _$$GetProfileParamsImplCopyWith<$Res>
    implements $GetProfileParamsCopyWith<$Res> {
  factory _$$GetProfileParamsImplCopyWith(_$GetProfileParamsImpl value,
          $Res Function(_$GetProfileParamsImpl) then) =
      __$$GetProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetProfileParamsImplCopyWithImpl<$Res>
    extends _$GetProfileParamsCopyWithImpl<$Res, _$GetProfileParamsImpl>
    implements _$$GetProfileParamsImplCopyWith<$Res> {
  __$$GetProfileParamsImplCopyWithImpl(_$GetProfileParamsImpl _value,
      $Res Function(_$GetProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetProfileParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileParamsImpl implements _GetProfileParams {
  const _$GetProfileParamsImpl({required this.userId});

  factory _$GetProfileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileParamsImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'GetProfileParams(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of GetProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileParamsImplCopyWith<_$GetProfileParamsImpl> get copyWith =>
      __$$GetProfileParamsImplCopyWithImpl<_$GetProfileParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _GetProfileParams implements GetProfileParams {
  const factory _GetProfileParams({required final String userId}) =
      _$GetProfileParamsImpl;

  factory _GetProfileParams.fromJson(Map<String, dynamic> json) =
      _$GetProfileParamsImpl.fromJson;

  @override
  String get userId;

  /// Create a copy of GetProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileParamsImplCopyWith<_$GetProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
