// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_character_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveCharacterParams _$RemoveCharacterParamsFromJson(
    Map<String, dynamic> json) {
  return _RemoveCharacterParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveCharacterParams {
  String get userId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get characterId => throw _privateConstructorUsedError;

  /// Serializes this RemoveCharacterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveCharacterParamsCopyWith<RemoveCharacterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveCharacterParamsCopyWith<$Res> {
  factory $RemoveCharacterParamsCopyWith(RemoveCharacterParams value,
          $Res Function(RemoveCharacterParams) then) =
      _$RemoveCharacterParamsCopyWithImpl<$Res, RemoveCharacterParams>;
  @useResult
  $Res call({String userId, String dleId, String characterId});
}

/// @nodoc
class _$RemoveCharacterParamsCopyWithImpl<$Res,
        $Val extends RemoveCharacterParams>
    implements $RemoveCharacterParamsCopyWith<$Res> {
  _$RemoveCharacterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? characterId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveCharacterParamsImplCopyWith<$Res>
    implements $RemoveCharacterParamsCopyWith<$Res> {
  factory _$$RemoveCharacterParamsImplCopyWith(
          _$RemoveCharacterParamsImpl value,
          $Res Function(_$RemoveCharacterParamsImpl) then) =
      __$$RemoveCharacterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String dleId, String characterId});
}

/// @nodoc
class __$$RemoveCharacterParamsImplCopyWithImpl<$Res>
    extends _$RemoveCharacterParamsCopyWithImpl<$Res,
        _$RemoveCharacterParamsImpl>
    implements _$$RemoveCharacterParamsImplCopyWith<$Res> {
  __$$RemoveCharacterParamsImplCopyWithImpl(_$RemoveCharacterParamsImpl _value,
      $Res Function(_$RemoveCharacterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? characterId = null,
  }) {
    return _then(_$RemoveCharacterParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveCharacterParamsImpl implements _RemoveCharacterParams {
  const _$RemoveCharacterParamsImpl(
      {required this.userId, required this.dleId, required this.characterId});

  factory _$RemoveCharacterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveCharacterParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;
  @override
  final String characterId;

  @override
  String toString() {
    return 'RemoveCharacterParams(userId: $userId, dleId: $dleId, characterId: $characterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCharacterParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId, characterId);

  /// Create a copy of RemoveCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCharacterParamsImplCopyWith<_$RemoveCharacterParamsImpl>
      get copyWith => __$$RemoveCharacterParamsImplCopyWithImpl<
          _$RemoveCharacterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveCharacterParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveCharacterParams implements RemoveCharacterParams {
  const factory _RemoveCharacterParams(
      {required final String userId,
      required final String dleId,
      required final String characterId}) = _$RemoveCharacterParamsImpl;

  factory _RemoveCharacterParams.fromJson(Map<String, dynamic> json) =
      _$RemoveCharacterParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;
  @override
  String get characterId;

  /// Create a copy of RemoveCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCharacterParamsImplCopyWith<_$RemoveCharacterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
