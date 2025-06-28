// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_selectable_value_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveSelectableValueParams _$RemoveSelectableValueParamsFromJson(
    Map<String, dynamic> json) {
  return _RemoveSelectableValueParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveSelectableValueParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get selectableId => throw _privateConstructorUsedError;

  /// Serializes this RemoveSelectableValueParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveSelectableValueParamsCopyWith<RemoveSelectableValueParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSelectableValueParamsCopyWith<$Res> {
  factory $RemoveSelectableValueParamsCopyWith(
          RemoveSelectableValueParams value,
          $Res Function(RemoveSelectableValueParams) then) =
      _$RemoveSelectableValueParamsCopyWithImpl<$Res,
          RemoveSelectableValueParams>;
  @useResult
  $Res call({String userId, String basicDleId, String selectableId});
}

/// @nodoc
class _$RemoveSelectableValueParamsCopyWithImpl<$Res,
        $Val extends RemoveSelectableValueParams>
    implements $RemoveSelectableValueParamsCopyWith<$Res> {
  _$RemoveSelectableValueParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? selectableId = null,
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
      selectableId: null == selectableId
          ? _value.selectableId
          : selectableId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveSelectableValueParamsImplCopyWith<$Res>
    implements $RemoveSelectableValueParamsCopyWith<$Res> {
  factory _$$RemoveSelectableValueParamsImplCopyWith(
          _$RemoveSelectableValueParamsImpl value,
          $Res Function(_$RemoveSelectableValueParamsImpl) then) =
      __$$RemoveSelectableValueParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String basicDleId, String selectableId});
}

/// @nodoc
class __$$RemoveSelectableValueParamsImplCopyWithImpl<$Res>
    extends _$RemoveSelectableValueParamsCopyWithImpl<$Res,
        _$RemoveSelectableValueParamsImpl>
    implements _$$RemoveSelectableValueParamsImplCopyWith<$Res> {
  __$$RemoveSelectableValueParamsImplCopyWithImpl(
      _$RemoveSelectableValueParamsImpl _value,
      $Res Function(_$RemoveSelectableValueParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoveSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? selectableId = null,
  }) {
    return _then(_$RemoveSelectableValueParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      basicDleId: null == basicDleId
          ? _value.basicDleId
          : basicDleId // ignore: cast_nullable_to_non_nullable
              as String,
      selectableId: null == selectableId
          ? _value.selectableId
          : selectableId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveSelectableValueParamsImpl
    implements _RemoveSelectableValueParams {
  const _$RemoveSelectableValueParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.selectableId});

  factory _$RemoveSelectableValueParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemoveSelectableValueParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String selectableId;

  @override
  String toString() {
    return 'RemoveSelectableValueParams(userId: $userId, basicDleId: $basicDleId, selectableId: $selectableId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectableValueParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.selectableId, selectableId) ||
                other.selectableId == selectableId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, basicDleId, selectableId);

  /// Create a copy of RemoveSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSelectableValueParamsImplCopyWith<_$RemoveSelectableValueParamsImpl>
      get copyWith => __$$RemoveSelectableValueParamsImplCopyWithImpl<
          _$RemoveSelectableValueParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveSelectableValueParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveSelectableValueParams
    implements RemoveSelectableValueParams {
  const factory _RemoveSelectableValueParams(
      {required final String userId,
      required final String basicDleId,
      required final String selectableId}) = _$RemoveSelectableValueParamsImpl;

  factory _RemoveSelectableValueParams.fromJson(Map<String, dynamic> json) =
      _$RemoveSelectableValueParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get selectableId;

  /// Create a copy of RemoveSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveSelectableValueParamsImplCopyWith<_$RemoveSelectableValueParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
