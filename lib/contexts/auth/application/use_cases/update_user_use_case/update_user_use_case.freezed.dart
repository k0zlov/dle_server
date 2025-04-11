// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserParams _$UpdateUserParamsFromJson(Map<String, dynamic> json) {
  return _UpdateUserParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserParams {
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserParamsCopyWith<UpdateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserParamsCopyWith<$Res> {
  factory $UpdateUserParamsCopyWith(
          UpdateUserParams value, $Res Function(UpdateUserParams) then) =
      _$UpdateUserParamsCopyWithImpl<$Res, UpdateUserParams>;
  @useResult
  $Res call({String userId, String email, String password});
}

/// @nodoc
class _$UpdateUserParamsCopyWithImpl<$Res, $Val extends UpdateUserParams>
    implements $UpdateUserParamsCopyWith<$Res> {
  _$UpdateUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserParamsImplCopyWith<$Res>
    implements $UpdateUserParamsCopyWith<$Res> {
  factory _$$UpdateUserParamsImplCopyWith(_$UpdateUserParamsImpl value,
          $Res Function(_$UpdateUserParamsImpl) then) =
      __$$UpdateUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String email, String password});
}

/// @nodoc
class __$$UpdateUserParamsImplCopyWithImpl<$Res>
    extends _$UpdateUserParamsCopyWithImpl<$Res, _$UpdateUserParamsImpl>
    implements _$$UpdateUserParamsImplCopyWith<$Res> {
  __$$UpdateUserParamsImplCopyWithImpl(_$UpdateUserParamsImpl _value,
      $Res Function(_$UpdateUserParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UpdateUserParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserParamsImpl implements _UpdateUserParams {
  const _$UpdateUserParamsImpl(
      {required this.userId, required this.email, required this.password});

  factory _$UpdateUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UpdateUserParams(userId: $userId, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email, password);

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserParamsImplCopyWith<_$UpdateUserParamsImpl> get copyWith =>
      __$$UpdateUserParamsImplCopyWithImpl<_$UpdateUserParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserParams implements UpdateUserParams {
  const factory _UpdateUserParams(
      {required final String userId,
      required final String email,
      required final String password}) = _$UpdateUserParamsImpl;

  factory _UpdateUserParams.fromJson(Map<String, dynamic> json) =
      _$UpdateUserParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserParamsImplCopyWith<_$UpdateUserParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
