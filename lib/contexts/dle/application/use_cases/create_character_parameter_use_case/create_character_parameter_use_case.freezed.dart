// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_character_parameter_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCharacterParameterParams _$CreateCharacterParameterParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateCharacterParameterParams.fromJson(json);
}

/// @nodoc
mixin _$CreateCharacterParameterParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get parameterId => throw _privateConstructorUsedError;
  String get characterId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  /// Serializes this CreateCharacterParameterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCharacterParameterParamsCopyWith<CreateCharacterParameterParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCharacterParameterParamsCopyWith<$Res> {
  factory $CreateCharacterParameterParamsCopyWith(
          CreateCharacterParameterParams value,
          $Res Function(CreateCharacterParameterParams) then) =
      _$CreateCharacterParameterParamsCopyWithImpl<$Res,
          CreateCharacterParameterParams>;
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String parameterId,
      String characterId,
      String value,
      int index});
}

/// @nodoc
class _$CreateCharacterParameterParamsCopyWithImpl<$Res,
        $Val extends CreateCharacterParameterParams>
    implements $CreateCharacterParameterParamsCopyWith<$Res> {
  _$CreateCharacterParameterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? parameterId = null,
    Object? characterId = null,
    Object? value = null,
    Object? index = null,
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
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCharacterParameterParamsImplCopyWith<$Res>
    implements $CreateCharacterParameterParamsCopyWith<$Res> {
  factory _$$CreateCharacterParameterParamsImplCopyWith(
          _$CreateCharacterParameterParamsImpl value,
          $Res Function(_$CreateCharacterParameterParamsImpl) then) =
      __$$CreateCharacterParameterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String parameterId,
      String characterId,
      String value,
      int index});
}

/// @nodoc
class __$$CreateCharacterParameterParamsImplCopyWithImpl<$Res>
    extends _$CreateCharacterParameterParamsCopyWithImpl<$Res,
        _$CreateCharacterParameterParamsImpl>
    implements _$$CreateCharacterParameterParamsImplCopyWith<$Res> {
  __$$CreateCharacterParameterParamsImplCopyWithImpl(
      _$CreateCharacterParameterParamsImpl _value,
      $Res Function(_$CreateCharacterParameterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? parameterId = null,
    Object? characterId = null,
    Object? value = null,
    Object? index = null,
  }) {
    return _then(_$CreateCharacterParameterParamsImpl(
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
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCharacterParameterParamsImpl
    implements _CreateCharacterParameterParams {
  const _$CreateCharacterParameterParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.parameterId,
      required this.characterId,
      required this.value,
      this.index = 0});

  factory _$CreateCharacterParameterParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateCharacterParameterParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String parameterId;
  @override
  final String characterId;
  @override
  final String value;
  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'CreateCharacterParameterParams(userId: $userId, basicDleId: $basicDleId, parameterId: $parameterId, characterId: $characterId, value: $value, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCharacterParameterParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, basicDleId, parameterId, characterId, value, index);

  /// Create a copy of CreateCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCharacterParameterParamsImplCopyWith<
          _$CreateCharacterParameterParamsImpl>
      get copyWith => __$$CreateCharacterParameterParamsImplCopyWithImpl<
          _$CreateCharacterParameterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCharacterParameterParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateCharacterParameterParams
    implements CreateCharacterParameterParams {
  const factory _CreateCharacterParameterParams(
      {required final String userId,
      required final String basicDleId,
      required final String parameterId,
      required final String characterId,
      required final String value,
      final int index}) = _$CreateCharacterParameterParamsImpl;

  factory _CreateCharacterParameterParams.fromJson(Map<String, dynamic> json) =
      _$CreateCharacterParameterParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get parameterId;
  @override
  String get characterId;
  @override
  String get value;
  @override
  int get index;

  /// Create a copy of CreateCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCharacterParameterParamsImplCopyWith<
          _$CreateCharacterParameterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
