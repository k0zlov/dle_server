// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_basic_dle_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBasicDleParams _$GetBasicDleParamsFromJson(Map<String, dynamic> json) {
  return _GetBasicDleParams.fromJson(json);
}

/// @nodoc
mixin _$GetBasicDleParams {
  String get userId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;

  /// Serializes this GetBasicDleParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBasicDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBasicDleParamsCopyWith<GetBasicDleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBasicDleParamsCopyWith<$Res> {
  factory $GetBasicDleParamsCopyWith(
          GetBasicDleParams value, $Res Function(GetBasicDleParams) then) =
      _$GetBasicDleParamsCopyWithImpl<$Res, GetBasicDleParams>;
  @useResult
  $Res call({String userId, String dleId});
}

/// @nodoc
class _$GetBasicDleParamsCopyWithImpl<$Res, $Val extends GetBasicDleParams>
    implements $GetBasicDleParamsCopyWith<$Res> {
  _$GetBasicDleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBasicDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBasicDleParamsImplCopyWith<$Res>
    implements $GetBasicDleParamsCopyWith<$Res> {
  factory _$$GetBasicDleParamsImplCopyWith(_$GetBasicDleParamsImpl value,
          $Res Function(_$GetBasicDleParamsImpl) then) =
      __$$GetBasicDleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String dleId});
}

/// @nodoc
class __$$GetBasicDleParamsImplCopyWithImpl<$Res>
    extends _$GetBasicDleParamsCopyWithImpl<$Res, _$GetBasicDleParamsImpl>
    implements _$$GetBasicDleParamsImplCopyWith<$Res> {
  __$$GetBasicDleParamsImplCopyWithImpl(_$GetBasicDleParamsImpl _value,
      $Res Function(_$GetBasicDleParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBasicDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
  }) {
    return _then(_$GetBasicDleParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBasicDleParamsImpl implements _GetBasicDleParams {
  const _$GetBasicDleParamsImpl({required this.userId, required this.dleId});

  factory _$GetBasicDleParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBasicDleParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;

  @override
  String toString() {
    return 'GetBasicDleParams(userId: $userId, dleId: $dleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBasicDleParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId);

  /// Create a copy of GetBasicDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBasicDleParamsImplCopyWith<_$GetBasicDleParamsImpl> get copyWith =>
      __$$GetBasicDleParamsImplCopyWithImpl<_$GetBasicDleParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBasicDleParamsImplToJson(
      this,
    );
  }
}

abstract class _GetBasicDleParams implements GetBasicDleParams {
  const factory _GetBasicDleParams(
      {required final String userId,
      required final String dleId}) = _$GetBasicDleParamsImpl;

  factory _GetBasicDleParams.fromJson(Map<String, dynamic> json) =
      _$GetBasicDleParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;

  /// Create a copy of GetBasicDleParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBasicDleParamsImplCopyWith<_$GetBasicDleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
