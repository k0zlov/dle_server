// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_selectable_value_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateSelectableValueParams _$CreateSelectableValueParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateSelectableValueParams.fromJson(json);
}

/// @nodoc
mixin _$CreateSelectableValueParams {
  String get userId => throw _privateConstructorUsedError;
  String get basicDleId => throw _privateConstructorUsedError;
  String get parameterId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this CreateSelectableValueParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSelectableValueParamsCopyWith<CreateSelectableValueParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSelectableValueParamsCopyWith<$Res> {
  factory $CreateSelectableValueParamsCopyWith(
          CreateSelectableValueParams value,
          $Res Function(CreateSelectableValueParams) then) =
      _$CreateSelectableValueParamsCopyWithImpl<$Res,
          CreateSelectableValueParams>;
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String parameterId,
      String value,
      String title});
}

/// @nodoc
class _$CreateSelectableValueParamsCopyWithImpl<$Res,
        $Val extends CreateSelectableValueParams>
    implements $CreateSelectableValueParamsCopyWith<$Res> {
  _$CreateSelectableValueParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? parameterId = null,
    Object? value = null,
    Object? title = null,
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSelectableValueParamsImplCopyWith<$Res>
    implements $CreateSelectableValueParamsCopyWith<$Res> {
  factory _$$CreateSelectableValueParamsImplCopyWith(
          _$CreateSelectableValueParamsImpl value,
          $Res Function(_$CreateSelectableValueParamsImpl) then) =
      __$$CreateSelectableValueParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String basicDleId,
      String parameterId,
      String value,
      String title});
}

/// @nodoc
class __$$CreateSelectableValueParamsImplCopyWithImpl<$Res>
    extends _$CreateSelectableValueParamsCopyWithImpl<$Res,
        _$CreateSelectableValueParamsImpl>
    implements _$$CreateSelectableValueParamsImplCopyWith<$Res> {
  __$$CreateSelectableValueParamsImplCopyWithImpl(
      _$CreateSelectableValueParamsImpl _value,
      $Res Function(_$CreateSelectableValueParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? basicDleId = null,
    Object? parameterId = null,
    Object? value = null,
    Object? title = null,
  }) {
    return _then(_$CreateSelectableValueParamsImpl(
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSelectableValueParamsImpl
    implements _CreateSelectableValueParams {
  const _$CreateSelectableValueParamsImpl(
      {required this.userId,
      required this.basicDleId,
      required this.parameterId,
      required this.value,
      this.title = ''});

  factory _$CreateSelectableValueParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSelectableValueParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String basicDleId;
  @override
  final String parameterId;
  @override
  final String value;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'CreateSelectableValueParams(userId: $userId, basicDleId: $basicDleId, parameterId: $parameterId, value: $value, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSelectableValueParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.basicDleId, basicDleId) ||
                other.basicDleId == basicDleId) &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, basicDleId, parameterId, value, title);

  /// Create a copy of CreateSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSelectableValueParamsImplCopyWith<_$CreateSelectableValueParamsImpl>
      get copyWith => __$$CreateSelectableValueParamsImplCopyWithImpl<
          _$CreateSelectableValueParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSelectableValueParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateSelectableValueParams
    implements CreateSelectableValueParams {
  const factory _CreateSelectableValueParams(
      {required final String userId,
      required final String basicDleId,
      required final String parameterId,
      required final String value,
      final String title}) = _$CreateSelectableValueParamsImpl;

  factory _CreateSelectableValueParams.fromJson(Map<String, dynamic> json) =
      _$CreateSelectableValueParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get basicDleId;
  @override
  String get parameterId;
  @override
  String get value;
  @override
  String get title;

  /// Create a copy of CreateSelectableValueParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSelectableValueParamsImplCopyWith<_$CreateSelectableValueParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
