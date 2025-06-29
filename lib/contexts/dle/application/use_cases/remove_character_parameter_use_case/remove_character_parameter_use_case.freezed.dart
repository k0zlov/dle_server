// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_character_parameter_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveCharacterParameterParams _$RemoveCharacterParameterParamsFromJson(
    Map<String, dynamic> json) {
  return _RemoveCharacterParameterParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveCharacterParameterParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get characterParameterId => throw _privateConstructorUsedError;

  /// Serializes this RemoveCharacterParameterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveCharacterParameterParamsCopyWith<RemoveCharacterParameterParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveCharacterParameterParamsCopyWith<$Res> {
  factory $RemoveCharacterParameterParamsCopyWith(
          RemoveCharacterParameterParams value,
          $Res Function(RemoveCharacterParameterParams) then) =
      _$RemoveCharacterParameterParamsCopyWithImpl<$Res,
          RemoveCharacterParameterParams>;
  @useResult
  $Res call({String userId, String basicDleId, String characterParameterId});
}

/// @nodoc
class _$RemoveCharacterParameterParamsCopyWithImpl<$Res,
        $Val extends RemoveCharacterParameterParams>
    implements $RemoveCharacterParameterParamsCopyWith<$Res> {
  _$RemoveCharacterParameterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? characterParameterId = null,
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
      characterParameterId: null == characterParameterId
          ? _value.characterParameterId
          : characterParameterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveCharacterParameterParamsImplCopyWith<$Res>
    implements $RemoveCharacterParameterParamsCopyWith<$Res> {
  factory _$$RemoveCharacterParameterParamsImplCopyWith(
          _$RemoveCharacterParameterParamsImpl value,
          $Res Function(_$RemoveCharacterParameterParamsImpl) then) =
      __$$RemoveCharacterParameterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String basicDleId, String characterParameterId});
}

/// @nodoc
class __$$RemoveCharacterParameterParamsImplCopyWithImpl<$Res>
    extends _$RemoveCharacterParameterParamsCopyWithImpl<$Res,
        _$RemoveCharacterParameterParamsImpl>
    implements _$$RemoveCharacterParameterParamsImplCopyWith<$Res> {
  __$$RemoveCharacterParameterParamsImplCopyWithImpl(
      _$RemoveCharacterParameterParamsImpl _value,
      $Res Function(_$RemoveCharacterParameterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? characterParameterId = null,
  }) {
    return _then(_$RemoveCharacterParameterParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      basicDleId: null == basicDleId
          ? _value.basicDleId
          : basicDleId // ignore: cast_nullable_to_non_nullable
              as String,
      characterParameterId: null == characterParameterId
          ? _value.characterParameterId
          : characterParameterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveCharacterParameterParamsImpl
    implements _RemoveCharacterParameterParams {
  const _$RemoveCharacterParameterParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.characterParameterId});

  factory _$RemoveCharacterParameterParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemoveCharacterParameterParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String characterParameterId;

  @override
  String toString() {
    return 'RemoveCharacterParameterParams(userId: $userId, basicDleId: $basicDleId, characterParameterId: $characterParameterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCharacterParameterParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.characterParameterId, characterParameterId) ||
                other.characterParameterId == characterParameterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, basicDleId, characterParameterId);

  /// Create a copy of RemoveCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCharacterParameterParamsImplCopyWith<
          _$RemoveCharacterParameterParamsImpl>
      get copyWith => __$$RemoveCharacterParameterParamsImplCopyWithImpl<
          _$RemoveCharacterParameterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveCharacterParameterParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveCharacterParameterParams
    implements RemoveCharacterParameterParams {
  const factory _RemoveCharacterParameterParams(
          {required final String userId,
          required final String basicDleId,
          required final String characterParameterId}) =
      _$RemoveCharacterParameterParamsImpl;

  factory _RemoveCharacterParameterParams.fromJson(Map<String, dynamic> json) =
      _$RemoveCharacterParameterParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get characterParameterId;

  /// Create a copy of RemoveCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCharacterParameterParamsImplCopyWith<
          _$RemoveCharacterParameterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
