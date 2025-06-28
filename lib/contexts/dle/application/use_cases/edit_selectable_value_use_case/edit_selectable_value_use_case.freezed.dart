// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_selectable_value_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditSelectableValueParams _$EditSelectableValueParamsFromJson(
    Map<String, dynamic> json) {
  return _EditSelectableValueParams.fromJson(json);
}

/// @nodoc
mixin _$EditSelectableValueParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get selectableId => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this EditSelectableValueParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditSelectableValueParamsCopyWith<EditSelectableValueParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSelectableValueParamsCopyWith<$Res> {
  factory $EditSelectableValueParamsCopyWith(EditSelectableValueParams value,
          $Res Function(EditSelectableValueParams) then) =
      _$EditSelectableValueParamsCopyWithImpl<$Res, EditSelectableValueParams>;
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String selectableId,
      String? value,
      String? title});
}

/// @nodoc
class _$EditSelectableValueParamsCopyWithImpl<$Res,
        $Val extends EditSelectableValueParams>
    implements $EditSelectableValueParamsCopyWith<$Res> {
  _$EditSelectableValueParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? selectableId = null,
    Object? value = freezed,
    Object? title = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditSelectableValueParamsImplCopyWith<$Res>
    implements $EditSelectableValueParamsCopyWith<$Res> {
  factory _$$EditSelectableValueParamsImplCopyWith(
          _$EditSelectableValueParamsImpl value,
          $Res Function(_$EditSelectableValueParamsImpl) then) =
      __$$EditSelectableValueParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String selectableId,
      String? value,
      String? title});
}

/// @nodoc
class __$$EditSelectableValueParamsImplCopyWithImpl<$Res>
    extends _$EditSelectableValueParamsCopyWithImpl<$Res,
        _$EditSelectableValueParamsImpl>
    implements _$$EditSelectableValueParamsImplCopyWith<$Res> {
  __$$EditSelectableValueParamsImplCopyWithImpl(
      _$EditSelectableValueParamsImpl _value,
      $Res Function(_$EditSelectableValueParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? selectableId = null,
    Object? value = freezed,
    Object? title = freezed,
  }) {
    return _then(_$EditSelectableValueParamsImpl(
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditSelectableValueParamsImpl implements _EditSelectableValueParams {
  const _$EditSelectableValueParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.selectableId,
      this.value,
      this.title});

  factory _$EditSelectableValueParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditSelectableValueParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String selectableId;
  @override
  final String? value;
  @override
  final String? title;

  @override
  String toString() {
    return 'EditSelectableValueParams(userId: $userId, basicDleId: $basicDleId, selectableId: $selectableId, value: $value, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSelectableValueParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.selectableId, selectableId) ||
                other.selectableId == selectableId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, basicDleId, selectableId, value, title);

  /// Create a copy of EditSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSelectableValueParamsImplCopyWith<_$EditSelectableValueParamsImpl>
      get copyWith => __$$EditSelectableValueParamsImplCopyWithImpl<
          _$EditSelectableValueParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSelectableValueParamsImplToJson(
      this,
    );
  }
}

abstract class _EditSelectableValueParams implements EditSelectableValueParams {
  const factory _EditSelectableValueParams(
      {required final String userId,
      required final String basicDleId,
      required final String selectableId,
      final String? value,
      final String? title}) = _$EditSelectableValueParamsImpl;

  factory _EditSelectableValueParams.fromJson(Map<String, dynamic> json) =
      _$EditSelectableValueParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get selectableId;
  @override
  String? get value;
  @override
  String? get title;

  /// Create a copy of EditSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditSelectableValueParamsImplCopyWith<_$EditSelectableValueParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
