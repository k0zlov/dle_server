// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_current_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCurrentProfileParams _$GetCurrentProfileParamsFromJson(
    Map<String, dynamic> json) {
  return _GetCurrentProfileParams.fromJson(json);
}

/// @nodoc
mixin _$GetCurrentProfileParams {
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this GetCurrentProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCurrentProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCurrentProfileParamsCopyWith<GetCurrentProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentProfileParamsCopyWith<$Res> {
  factory $GetCurrentProfileParamsCopyWith(GetCurrentProfileParams value,
          $Res Function(GetCurrentProfileParams) then) =
      _$GetCurrentProfileParamsCopyWithImpl<$Res, GetCurrentProfileParams>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$GetCurrentProfileParamsCopyWithImpl<$Res,
        $Val extends GetCurrentProfileParams>
    implements $GetCurrentProfileParamsCopyWith<$Res> {
  _$GetCurrentProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCurrentProfileParams
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
abstract class _$$GetCurrentProfileParamsImplCopyWith<$Res>
    implements $GetCurrentProfileParamsCopyWith<$Res> {
  factory _$$GetCurrentProfileParamsImplCopyWith(
          _$GetCurrentProfileParamsImpl value,
          $Res Function(_$GetCurrentProfileParamsImpl) then) =
      __$$GetCurrentProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetCurrentProfileParamsImplCopyWithImpl<$Res>
    extends _$GetCurrentProfileParamsCopyWithImpl<$Res,
        _$GetCurrentProfileParamsImpl>
    implements _$$GetCurrentProfileParamsImplCopyWith<$Res> {
  __$$GetCurrentProfileParamsImplCopyWithImpl(
      _$GetCurrentProfileParamsImpl _value,
      $Res Function(_$GetCurrentProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCurrentProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetCurrentProfileParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCurrentProfileParamsImpl implements _GetCurrentProfileParams {
  const _$GetCurrentProfileParamsImpl({required this.userId});

  factory _$GetCurrentProfileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCurrentProfileParamsImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'GetCurrentProfileParams(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentProfileParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of GetCurrentProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentProfileParamsImplCopyWith<_$GetCurrentProfileParamsImpl>
      get copyWith => __$$GetCurrentProfileParamsImplCopyWithImpl<
          _$GetCurrentProfileParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCurrentProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _GetCurrentProfileParams implements GetCurrentProfileParams {
  const factory _GetCurrentProfileParams({required final String userId}) =
      _$GetCurrentProfileParamsImpl;

  factory _GetCurrentProfileParams.fromJson(Map<String, dynamic> json) =
      _$GetCurrentProfileParamsImpl.fromJson;

  @override
  String get userId;

  /// Create a copy of GetCurrentProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCurrentProfileParamsImplCopyWith<_$GetCurrentProfileParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
