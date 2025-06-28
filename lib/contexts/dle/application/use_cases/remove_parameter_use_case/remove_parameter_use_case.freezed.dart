// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_parameter_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveParameterParams _$RemoveParameterParamsFromJson(
    Map<String, dynamic> json) {
  return _RemoveParameterParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveParameterParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get parameterId => throw _privateConstructorUsedError;

  /// Serializes this RemoveParameterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveParameterParamsCopyWith<RemoveParameterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveParameterParamsCopyWith<$Res> {
  factory $RemoveParameterParamsCopyWith(RemoveParameterParams value,
          $Res Function(RemoveParameterParams) then) =
      _$RemoveParameterParamsCopyWithImpl<$Res, RemoveParameterParams>;
  @useResult
  $Res call({String userId, String basicDleId, String parameterId});
}

/// @nodoc
class _$RemoveParameterParamsCopyWithImpl<$Res,
        $Val extends RemoveParameterParams>
    implements $RemoveParameterParamsCopyWith<$Res> {
  _$RemoveParameterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? parameterId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      basicDleId: null == basicDleId
          ? _value.basicDleId
          : basicDleId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveParameterParamsImplCopyWith<$Res>
    implements $RemoveParameterParamsCopyWith<$Res> {
  factory _$$RemoveParameterParamsImplCopyWith(
          _$RemoveParameterParamsImpl value,
          $Res Function(_$RemoveParameterParamsImpl) then) =
      __$$RemoveParameterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String basicDleId, String parameterId});
}

/// @nodoc
class __$$RemoveParameterParamsImplCopyWithImpl<$Res>
    extends _$RemoveParameterParamsCopyWithImpl<$Res,
        _$RemoveParameterParamsImpl>
    implements _$$RemoveParameterParamsImplCopyWith<$Res> {
  __$$RemoveParameterParamsImplCopyWithImpl(_$RemoveParameterParamsImpl _value,
      $Res Function(_$RemoveParameterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? parameterId = null,
  }) {
    return _then(_$RemoveParameterParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      basicDleId: null == basicDleId
          ? _value.basicDleId
          : basicDleId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveParameterParamsImpl implements _RemoveParameterParams {
  const _$RemoveParameterParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.parameterId});

  factory _$RemoveParameterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveParameterParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String parameterId;

  @override
  String toString() {
    return 'RemoveParameterParams(userId: $userId, basicDleId: $basicDleId, parameterId: $parameterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveParameterParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, basicDleId, parameterId);

  /// Create a copy of RemoveParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveParameterParamsImplCopyWith<_$RemoveParameterParamsImpl>
      get copyWith => __$$RemoveParameterParamsImplCopyWithImpl<
          _$RemoveParameterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveParameterParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveParameterParams implements RemoveParameterParams {
  const factory _RemoveParameterParams(
      {required final String userId,
      required final String basicDleId,
      required final String parameterId}) = _$RemoveParameterParamsImpl;

  factory _RemoveParameterParams.fromJson(Map<String, dynamic> json) =
      _$RemoveParameterParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get parameterId;

  /// Create a copy of RemoveParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveParameterParamsImplCopyWith<_$RemoveParameterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
