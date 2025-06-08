// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_character_hint_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageCharacterHintParams _$ManageCharacterHintParamsFromJson(
    Map<String, dynamic> json) {
  return _ManageCharacterHintParams.fromJson(json);
}

/// @nodoc
mixin _$ManageCharacterHintParams {
  String get userId => throw _privateConstructorUsedError;
  String get hintId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get characterId => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  /// Serializes this ManageCharacterHintParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageCharacterHintParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageCharacterHintParamsCopyWith<ManageCharacterHintParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCharacterHintParamsCopyWith<$Res> {
  factory $ManageCharacterHintParamsCopyWith(ManageCharacterHintParams value,
          $Res Function(ManageCharacterHintParams) then) =
      _$ManageCharacterHintParamsCopyWithImpl<$Res, ManageCharacterHintParams>;
  @useResult
  $Res call(
      {String userId,
      String hintId,
      String dleId,
      String characterId,
      dynamic value});
}

/// @nodoc
class _$ManageCharacterHintParamsCopyWithImpl<$Res,
        $Val extends ManageCharacterHintParams>
    implements $ManageCharacterHintParamsCopyWith<$Res> {
  _$ManageCharacterHintParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageCharacterHintParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hintId = null,
    Object? dleId = null,
    Object? characterId = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hintId: null == hintId
          ? _value.hintId
          : hintId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageCharacterHintParamsImplCopyWith<$Res>
    implements $ManageCharacterHintParamsCopyWith<$Res> {
  factory _$$ManageCharacterHintParamsImplCopyWith(
          _$ManageCharacterHintParamsImpl value,
          $Res Function(_$ManageCharacterHintParamsImpl) then) =
      __$$ManageCharacterHintParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String hintId,
      String dleId,
      String characterId,
      dynamic value});
}

/// @nodoc
class __$$ManageCharacterHintParamsImplCopyWithImpl<$Res>
    extends _$ManageCharacterHintParamsCopyWithImpl<$Res,
        _$ManageCharacterHintParamsImpl>
    implements _$$ManageCharacterHintParamsImplCopyWith<$Res> {
  __$$ManageCharacterHintParamsImplCopyWithImpl(
      _$ManageCharacterHintParamsImpl _value,
      $Res Function(_$ManageCharacterHintParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageCharacterHintParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hintId = null,
    Object? dleId = null,
    Object? characterId = null,
    Object? value = freezed,
  }) {
    return _then(_$ManageCharacterHintParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hintId: null == hintId
          ? _value.hintId
          : hintId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManageCharacterHintParamsImpl implements _ManageCharacterHintParams {
  const _$ManageCharacterHintParamsImpl(
      {required this.userId,
      required this.hintId,
      required this.dleId,
      required this.characterId,
      required this.value});

  factory _$ManageCharacterHintParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageCharacterHintParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String hintId;
  @override
  final String dleId;
  @override
  final String characterId;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'ManageCharacterHintParams(userId: $userId, hintId: $hintId, dleId: $dleId, characterId: $characterId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageCharacterHintParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hintId, hintId) || other.hintId == hintId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, hintId, dleId,
      characterId, const DeepCollectionEquality().hash(value));

  /// Create a copy of ManageCharacterHintParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageCharacterHintParamsImplCopyWith<_$ManageCharacterHintParamsImpl>
      get copyWith => __$$ManageCharacterHintParamsImplCopyWithImpl<
          _$ManageCharacterHintParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageCharacterHintParamsImplToJson(
      this,
    );
  }
}

abstract class _ManageCharacterHintParams implements ManageCharacterHintParams {
  const factory _ManageCharacterHintParams(
      {required final String userId,
      required final String hintId,
      required final String dleId,
      required final String characterId,
      required final dynamic value}) = _$ManageCharacterHintParamsImpl;

  factory _ManageCharacterHintParams.fromJson(Map<String, dynamic> json) =
      _$ManageCharacterHintParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get hintId;
  @override
  String get dleId;
  @override
  String get characterId;
  @override
  dynamic get value;

  /// Create a copy of ManageCharacterHintParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageCharacterHintParamsImplCopyWith<_$ManageCharacterHintParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
