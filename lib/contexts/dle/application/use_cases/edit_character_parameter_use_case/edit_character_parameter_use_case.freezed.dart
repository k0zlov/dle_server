// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_character_parameter_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditCharacterParameterParams _$EditCharacterParameterParamsFromJson(
    Map<String, dynamic> json) {
  return _EditCharacterParameterParams.fromJson(json);
}

/// @nodoc
mixin _$EditCharacterParameterParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get characterParameterId => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  /// Serializes this EditCharacterParameterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditCharacterParameterParamsCopyWith<EditCharacterParameterParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCharacterParameterParamsCopyWith<$Res> {
  factory $EditCharacterParameterParamsCopyWith(
          EditCharacterParameterParams value,
          $Res Function(EditCharacterParameterParams) then) =
      _$EditCharacterParameterParamsCopyWithImpl<$Res,
          EditCharacterParameterParams>;
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String characterParameterId,
      String? value,
      int? index});
}

/// @nodoc
class _$EditCharacterParameterParamsCopyWithImpl<$Res,
        $Val extends EditCharacterParameterParams>
    implements $EditCharacterParameterParamsCopyWith<$Res> {
  _$EditCharacterParameterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? characterParameterId = null,
    Object? value = freezed,
    Object? index = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditCharacterParameterParamsImplCopyWith<$Res>
    implements $EditCharacterParameterParamsCopyWith<$Res> {
  factory _$$EditCharacterParameterParamsImplCopyWith(
          _$EditCharacterParameterParamsImpl value,
          $Res Function(_$EditCharacterParameterParamsImpl) then) =
      __$$EditCharacterParameterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String characterParameterId,
      String? value,
      int? index});
}

/// @nodoc
class __$$EditCharacterParameterParamsImplCopyWithImpl<$Res>
    extends _$EditCharacterParameterParamsCopyWithImpl<$Res,
        _$EditCharacterParameterParamsImpl>
    implements _$$EditCharacterParameterParamsImplCopyWith<$Res> {
  __$$EditCharacterParameterParamsImplCopyWithImpl(
      _$EditCharacterParameterParamsImpl _value,
      $Res Function(_$EditCharacterParameterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? characterParameterId = null,
    Object? value = freezed,
    Object? index = freezed,
  }) {
    return _then(_$EditCharacterParameterParamsImpl(
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditCharacterParameterParamsImpl
    implements _EditCharacterParameterParams {
  const _$EditCharacterParameterParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.characterParameterId,
      this.value,
      this.index});

  factory _$EditCharacterParameterParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EditCharacterParameterParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String characterParameterId;
  @override
  final String? value;
  @override
  final int? index;

  @override
  String toString() {
    return 'EditCharacterParameterParams(userId: $userId, basicDleId: $basicDleId, characterParameterId: $characterParameterId, value: $value, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCharacterParameterParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.characterParameterId, characterParameterId) ||
                other.characterParameterId == characterParameterId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, basicDleId, characterParameterId, value, index);

  /// Create a copy of EditCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCharacterParameterParamsImplCopyWith<
          _$EditCharacterParameterParamsImpl>
      get copyWith => __$$EditCharacterParameterParamsImplCopyWithImpl<
          _$EditCharacterParameterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditCharacterParameterParamsImplToJson(
      this,
    );
  }
}

abstract class _EditCharacterParameterParams
    implements EditCharacterParameterParams {
  const factory _EditCharacterParameterParams(
      {required final String userId,
      required final String basicDleId,
      required final String characterParameterId,
      final String? value,
      final int? index}) = _$EditCharacterParameterParamsImpl;

  factory _EditCharacterParameterParams.fromJson(Map<String, dynamic> json) =
      _$EditCharacterParameterParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get characterParameterId;
  @override
  String? get value;
  @override
  int? get index;

  /// Create a copy of EditCharacterParameterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditCharacterParameterParamsImplCopyWith<
          _$EditCharacterParameterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
