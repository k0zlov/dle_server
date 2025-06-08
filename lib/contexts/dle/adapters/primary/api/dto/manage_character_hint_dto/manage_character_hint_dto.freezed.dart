// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_character_hint_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageCharacterHintDto _$ManageCharacterHintDtoFromJson(
    Map<String, dynamic> json) {
  return _ManageCharacterHintDto.fromJson(json);
}

/// @nodoc
mixin _$ManageCharacterHintDto {
  String get id => throw _privateConstructorUsedError;
  String get hintId => throw _privateConstructorUsedError;
  String get characterId => throw _privateConstructorUsedError;
  HintValueDto get value => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ManageCharacterHintDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageCharacterHintDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageCharacterHintDtoCopyWith<ManageCharacterHintDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCharacterHintDtoCopyWith<$Res> {
  factory $ManageCharacterHintDtoCopyWith(ManageCharacterHintDto value,
          $Res Function(ManageCharacterHintDto) then) =
      _$ManageCharacterHintDtoCopyWithImpl<$Res, ManageCharacterHintDto>;
  @useResult
  $Res call(
      {String id,
      String hintId,
      String characterId,
      HintValueDto value,
      DateTime updatedAt,
      DateTime createdAt});

  $HintValueDtoCopyWith<$Res> get value;
}

/// @nodoc
class _$ManageCharacterHintDtoCopyWithImpl<$Res,
        $Val extends ManageCharacterHintDto>
    implements $ManageCharacterHintDtoCopyWith<$Res> {
  _$ManageCharacterHintDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageCharacterHintDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hintId = null,
    Object? characterId = null,
    Object? value = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hintId: null == hintId
          ? _value.hintId
          : hintId // ignore: cast_nullable_to_non_nullable
              as String,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as HintValueDto,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ManageCharacterHintDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HintValueDtoCopyWith<$Res> get value {
    return $HintValueDtoCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManageCharacterHintDtoImplCopyWith<$Res>
    implements $ManageCharacterHintDtoCopyWith<$Res> {
  factory _$$ManageCharacterHintDtoImplCopyWith(
          _$ManageCharacterHintDtoImpl value,
          $Res Function(_$ManageCharacterHintDtoImpl) then) =
      __$$ManageCharacterHintDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String hintId,
      String characterId,
      HintValueDto value,
      DateTime updatedAt,
      DateTime createdAt});

  @override
  $HintValueDtoCopyWith<$Res> get value;
}

/// @nodoc
class __$$ManageCharacterHintDtoImplCopyWithImpl<$Res>
    extends _$ManageCharacterHintDtoCopyWithImpl<$Res,
        _$ManageCharacterHintDtoImpl>
    implements _$$ManageCharacterHintDtoImplCopyWith<$Res> {
  __$$ManageCharacterHintDtoImplCopyWithImpl(
      _$ManageCharacterHintDtoImpl _value,
      $Res Function(_$ManageCharacterHintDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageCharacterHintDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hintId = null,
    Object? characterId = null,
    Object? value = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$ManageCharacterHintDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hintId: null == hintId
          ? _value.hintId
          : hintId // ignore: cast_nullable_to_non_nullable
              as String,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as HintValueDto,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManageCharacterHintDtoImpl implements _ManageCharacterHintDto {
  const _$ManageCharacterHintDtoImpl(
      {required this.id,
      required this.hintId,
      required this.characterId,
      required this.value,
      required this.updatedAt,
      required this.createdAt});

  factory _$ManageCharacterHintDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageCharacterHintDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String hintId;
  @override
  final String characterId;
  @override
  final HintValueDto value;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ManageCharacterHintDto(id: $id, hintId: $hintId, characterId: $characterId, value: $value, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageCharacterHintDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hintId, hintId) || other.hintId == hintId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, hintId, characterId, value, updatedAt, createdAt);

  /// Create a copy of ManageCharacterHintDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageCharacterHintDtoImplCopyWith<_$ManageCharacterHintDtoImpl>
      get copyWith => __$$ManageCharacterHintDtoImplCopyWithImpl<
          _$ManageCharacterHintDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageCharacterHintDtoImplToJson(
      this,
    );
  }
}

abstract class _ManageCharacterHintDto implements ManageCharacterHintDto {
  const factory _ManageCharacterHintDto(
      {required final String id,
      required final String hintId,
      required final String characterId,
      required final HintValueDto value,
      required final DateTime updatedAt,
      required final DateTime createdAt}) = _$ManageCharacterHintDtoImpl;

  factory _ManageCharacterHintDto.fromJson(Map<String, dynamic> json) =
      _$ManageCharacterHintDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get hintId;
  @override
  String get characterId;
  @override
  HintValueDto get value;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of ManageCharacterHintDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageCharacterHintDtoImplCopyWith<_$ManageCharacterHintDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
