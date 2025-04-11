// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_current_user_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCurrentUserParams _$GetCurrentUserParamsFromJson(Map<String, dynamic> json) {
  return _GetCurrentUserParams.fromJson(json);
}

/// @nodoc
mixin _$GetCurrentUserParams {
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this GetCurrentUserParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCurrentUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCurrentUserParamsCopyWith<GetCurrentUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserParamsCopyWith<$Res> {
  factory $GetCurrentUserParamsCopyWith(GetCurrentUserParams value,
          $Res Function(GetCurrentUserParams) then) =
      _$GetCurrentUserParamsCopyWithImpl<$Res, GetCurrentUserParams>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$GetCurrentUserParamsCopyWithImpl<$Res,
        $Val extends GetCurrentUserParams>
    implements $GetCurrentUserParamsCopyWith<$Res> {
  _$GetCurrentUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCurrentUserParams
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
abstract class _$$GetCurrentUserParamsImplCopyWith<$Res>
    implements $GetCurrentUserParamsCopyWith<$Res> {
  factory _$$GetCurrentUserParamsImplCopyWith(_$GetCurrentUserParamsImpl value,
          $Res Function(_$GetCurrentUserParamsImpl) then) =
      __$$GetCurrentUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetCurrentUserParamsImplCopyWithImpl<$Res>
    extends _$GetCurrentUserParamsCopyWithImpl<$Res, _$GetCurrentUserParamsImpl>
    implements _$$GetCurrentUserParamsImplCopyWith<$Res> {
  __$$GetCurrentUserParamsImplCopyWithImpl(_$GetCurrentUserParamsImpl _value,
      $Res Function(_$GetCurrentUserParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCurrentUserParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetCurrentUserParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCurrentUserParamsImpl implements _GetCurrentUserParams {
  const _$GetCurrentUserParamsImpl({required this.userId});

  factory _$GetCurrentUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCurrentUserParamsImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'GetCurrentUserParams(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentUserParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of GetCurrentUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentUserParamsImplCopyWith<_$GetCurrentUserParamsImpl>
      get copyWith =>
          __$$GetCurrentUserParamsImplCopyWithImpl<_$GetCurrentUserParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCurrentUserParamsImplToJson(
      this,
    );
  }
}

abstract class _GetCurrentUserParams implements GetCurrentUserParams {
  const factory _GetCurrentUserParams({required final String userId}) =
      _$GetCurrentUserParamsImpl;

  factory _GetCurrentUserParams.fromJson(Map<String, dynamic> json) =
      _$GetCurrentUserParamsImpl.fromJson;

  @override
  String get userId;

  /// Create a copy of GetCurrentUserParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCurrentUserParamsImplCopyWith<_$GetCurrentUserParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
