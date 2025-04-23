// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_dle_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditDleParams _$EditDleParamsFromJson(Map<String, dynamic> json) {
  return _EditDleParams.fromJson(json);
}

/// @nodoc
mixin _$EditDleParams {
  String get dleId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool? get isPrivate => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this EditDleParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditDleParamsCopyWith<EditDleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditDleParamsCopyWith<$Res> {
  factory $EditDleParamsCopyWith(
          EditDleParams value, $Res Function(EditDleParams) then) =
      _$EditDleParamsCopyWithImpl<$Res, EditDleParams>;
  @useResult
  $Res call(
      {String dleId,
      String userId,
      bool? isPrivate,
      String? title,
      String? description});
}

/// @nodoc
class _$EditDleParamsCopyWithImpl<$Res, $Val extends EditDleParams>
    implements $EditDleParamsCopyWith<$Res> {
  _$EditDleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? userId = null,
    Object? isPrivate = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditDleParamsImplCopyWith<$Res>
    implements $EditDleParamsCopyWith<$Res> {
  factory _$$EditDleParamsImplCopyWith(
          _$EditDleParamsImpl value, $Res Function(_$EditDleParamsImpl) then) =
      __$$EditDleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dleId,
      String userId,
      bool? isPrivate,
      String? title,
      String? description});
}

/// @nodoc
class __$$EditDleParamsImplCopyWithImpl<$Res>
    extends _$EditDleParamsCopyWithImpl<$Res, _$EditDleParamsImpl>
    implements _$$EditDleParamsImplCopyWith<$Res> {
  __$$EditDleParamsImplCopyWithImpl(
      _$EditDleParamsImpl _value, $Res Function(_$EditDleParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditDleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? userId = null,
    Object? isPrivate = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$EditDleParamsImpl(
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditDleParamsImpl implements _EditDleParams {
  const _$EditDleParamsImpl(
      {required this.dleId,
      required this.userId,
      this.isPrivate,
      this.title,
      this.description});

  factory _$EditDleParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditDleParamsImplFromJson(json);

  @override
  final String dleId;
  @override
  final String userId;
  @override
  final bool? isPrivate;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'EditDleParams(dleId: $dleId, userId: $userId, isPrivate: $isPrivate, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditDleParamsImpl &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dleId, userId, isPrivate, title, description);

  /// Create a copy of EditDleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditDleParamsImplCopyWith<_$EditDleParamsImpl> get copyWith =>
      __$$EditDleParamsImplCopyWithImpl<_$EditDleParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditDleParamsImplToJson(
      this,
    );
  }
}

abstract class _EditDleParams implements EditDleParams {
  const factory _EditDleParams(
      {required final String dleId,
      required final String userId,
      final bool? isPrivate,
      final String? title,
      final String? description}) = _$EditDleParamsImpl;

  factory _EditDleParams.fromJson(Map<String, dynamic> json) =
      _$EditDleParamsImpl.fromJson;

  @override
  String get dleId;
  @override
  String get userId;
  @override
  bool? get isPrivate;
  @override
  String? get title;
  @override
  String? get description;

  /// Create a copy of EditDleParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditDleParamsImplCopyWith<_$EditDleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
