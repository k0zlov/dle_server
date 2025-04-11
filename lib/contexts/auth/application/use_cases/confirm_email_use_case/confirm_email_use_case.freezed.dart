// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_email_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmEmailParams _$ConfirmEmailParamsFromJson(Map<String, dynamic> json) {
  return _ConfirmEmailParams.fromJson(json);
}

/// @nodoc
mixin _$ConfirmEmailParams {
  String get code => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this ConfirmEmailParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmEmailParamsCopyWith<ConfirmEmailParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmEmailParamsCopyWith<$Res> {
  factory $ConfirmEmailParamsCopyWith(
          ConfirmEmailParams value, $Res Function(ConfirmEmailParams) then) =
      _$ConfirmEmailParamsCopyWithImpl<$Res, ConfirmEmailParams>;
  @useResult
  $Res call({String code, String userId});
}

/// @nodoc
class _$ConfirmEmailParamsCopyWithImpl<$Res, $Val extends ConfirmEmailParams>
    implements $ConfirmEmailParamsCopyWith<$Res> {
  _$ConfirmEmailParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmEmailParamsImplCopyWith<$Res>
    implements $ConfirmEmailParamsCopyWith<$Res> {
  factory _$$ConfirmEmailParamsImplCopyWith(_$ConfirmEmailParamsImpl value,
          $Res Function(_$ConfirmEmailParamsImpl) then) =
      __$$ConfirmEmailParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String userId});
}

/// @nodoc
class __$$ConfirmEmailParamsImplCopyWithImpl<$Res>
    extends _$ConfirmEmailParamsCopyWithImpl<$Res, _$ConfirmEmailParamsImpl>
    implements _$$ConfirmEmailParamsImplCopyWith<$Res> {
  __$$ConfirmEmailParamsImplCopyWithImpl(_$ConfirmEmailParamsImpl _value,
      $Res Function(_$ConfirmEmailParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? userId = null,
  }) {
    return _then(_$ConfirmEmailParamsImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmEmailParamsImpl implements _ConfirmEmailParams {
  const _$ConfirmEmailParamsImpl({required this.code, required this.userId});

  factory _$ConfirmEmailParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmEmailParamsImplFromJson(json);

  @override
  final String code;
  @override
  final String userId;

  @override
  String toString() {
    return 'ConfirmEmailParams(code: $code, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailParamsImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, userId);

  /// Create a copy of ConfirmEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailParamsImplCopyWith<_$ConfirmEmailParamsImpl> get copyWith =>
      __$$ConfirmEmailParamsImplCopyWithImpl<_$ConfirmEmailParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmEmailParamsImplToJson(
      this,
    );
  }
}

abstract class _ConfirmEmailParams implements ConfirmEmailParams {
  const factory _ConfirmEmailParams(
      {required final String code,
      required final String userId}) = _$ConfirmEmailParamsImpl;

  factory _ConfirmEmailParams.fromJson(Map<String, dynamic> json) =
      _$ConfirmEmailParamsImpl.fromJson;

  @override
  String get code;
  @override
  String get userId;

  /// Create a copy of ConfirmEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmEmailParamsImplCopyWith<_$ConfirmEmailParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
