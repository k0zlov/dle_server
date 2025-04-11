// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_email_code_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendEmailCodeParams _$SendEmailCodeParamsFromJson(Map<String, dynamic> json) {
  return _SendEmailCodeParams.fromJson(json);
}

/// @nodoc
mixin _$SendEmailCodeParams {
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this SendEmailCodeParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendEmailCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendEmailCodeParamsCopyWith<SendEmailCodeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEmailCodeParamsCopyWith<$Res> {
  factory $SendEmailCodeParamsCopyWith(
          SendEmailCodeParams value, $Res Function(SendEmailCodeParams) then) =
      _$SendEmailCodeParamsCopyWithImpl<$Res, SendEmailCodeParams>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$SendEmailCodeParamsCopyWithImpl<$Res, $Val extends SendEmailCodeParams>
    implements $SendEmailCodeParamsCopyWith<$Res> {
  _$SendEmailCodeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendEmailCodeParams
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
abstract class _$$SendEmailCodeParamsImplCopyWith<$Res>
    implements $SendEmailCodeParamsCopyWith<$Res> {
  factory _$$SendEmailCodeParamsImplCopyWith(_$SendEmailCodeParamsImpl value,
          $Res Function(_$SendEmailCodeParamsImpl) then) =
      __$$SendEmailCodeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$SendEmailCodeParamsImplCopyWithImpl<$Res>
    extends _$SendEmailCodeParamsCopyWithImpl<$Res, _$SendEmailCodeParamsImpl>
    implements _$$SendEmailCodeParamsImplCopyWith<$Res> {
  __$$SendEmailCodeParamsImplCopyWithImpl(_$SendEmailCodeParamsImpl _value,
      $Res Function(_$SendEmailCodeParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEmailCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$SendEmailCodeParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendEmailCodeParamsImpl implements _SendEmailCodeParams {
  const _$SendEmailCodeParamsImpl({required this.userId});

  factory _$SendEmailCodeParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendEmailCodeParamsImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'SendEmailCodeParams(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailCodeParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of SendEmailCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailCodeParamsImplCopyWith<_$SendEmailCodeParamsImpl> get copyWith =>
      __$$SendEmailCodeParamsImplCopyWithImpl<_$SendEmailCodeParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendEmailCodeParamsImplToJson(
      this,
    );
  }
}

abstract class _SendEmailCodeParams implements SendEmailCodeParams {
  const factory _SendEmailCodeParams({required final String userId}) =
      _$SendEmailCodeParamsImpl;

  factory _SendEmailCodeParams.fromJson(Map<String, dynamic> json) =
      _$SendEmailCodeParamsImpl.fromJson;

  @override
  String get userId;

  /// Create a copy of SendEmailCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendEmailCodeParamsImplCopyWith<_$SendEmailCodeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
