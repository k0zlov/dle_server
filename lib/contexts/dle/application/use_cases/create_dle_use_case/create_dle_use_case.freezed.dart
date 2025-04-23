// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_dle_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateDleParams _$CreateDleParamsFromJson(Map<String, dynamic> json) {
  return _CreateDleParams.fromJson(json);
}

/// @nodoc
mixin _$CreateDleParams {
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DleType get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CreateDleParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDleParamsCopyWith<CreateDleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDleParamsCopyWith<$Res> {
  factory $CreateDleParamsCopyWith(
          CreateDleParams value, $Res Function(CreateDleParams) then) =
      _$CreateDleParamsCopyWithImpl<$Res, CreateDleParams>;
  @useResult
  $Res call({String userId, String title, DleType type, String? description});
}

/// @nodoc
class _$CreateDleParamsCopyWithImpl<$Res, $Val extends CreateDleParams>
    implements $CreateDleParamsCopyWith<$Res> {
  _$CreateDleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DleType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDleParamsImplCopyWith<$Res>
    implements $CreateDleParamsCopyWith<$Res> {
  factory _$$CreateDleParamsImplCopyWith(_$CreateDleParamsImpl value,
          $Res Function(_$CreateDleParamsImpl) then) =
      __$$CreateDleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String title, DleType type, String? description});
}

/// @nodoc
class __$$CreateDleParamsImplCopyWithImpl<$Res>
    extends _$CreateDleParamsCopyWithImpl<$Res, _$CreateDleParamsImpl>
    implements _$$CreateDleParamsImplCopyWith<$Res> {
  __$$CreateDleParamsImplCopyWithImpl(
      _$CreateDleParamsImpl _value, $Res Function(_$CreateDleParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateDleParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DleType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDleParamsImpl implements _CreateDleParams {
  const _$CreateDleParamsImpl(
      {required this.userId,
      required this.title,
      required this.type,
      this.description});

  factory _$CreateDleParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDleParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String title;
  @override
  final DleType type;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateDleParams(userId: $userId, title: $title, type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDleParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, title, type, description);

  /// Create a copy of CreateDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDleParamsImplCopyWith<_$CreateDleParamsImpl> get copyWith =>
      __$$CreateDleParamsImplCopyWithImpl<_$CreateDleParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDleParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateDleParams implements CreateDleParams {
  const factory _CreateDleParams(
      {required final String userId,
      required final String title,
      required final DleType type,
      final String? description}) = _$CreateDleParamsImpl;

  factory _CreateDleParams.fromJson(Map<String, dynamic> json) =
      _$CreateDleParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get title;
  @override
  DleType get type;
  @override
  String? get description;

  /// Create a copy of CreateDleParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDleParamsImplCopyWith<_$CreateDleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
