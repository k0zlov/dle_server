// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_hint_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateHintParams _$CreateHintParamsFromJson(Map<String, dynamic> json) {
  return _CreateHintParams.fromJson(json);
}

/// @nodoc
mixin _$CreateHintParams {
  String get userId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  HintType get type => throw _privateConstructorUsedError;
  int get requiredTries => throw _privateConstructorUsedError;
  bool? get isHidden => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this CreateHintParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateHintParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateHintParamsCopyWith<CreateHintParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateHintParamsCopyWith<$Res> {
  factory $CreateHintParamsCopyWith(
          CreateHintParams value, $Res Function(CreateHintParams) then) =
      _$CreateHintParamsCopyWithImpl<$Res, CreateHintParams>;
  @useResult
  $Res call(
      {String userId,
      String dleId,
      String title,
      HintType type,
      int requiredTries,
      bool? isHidden,
      String description});
}

/// @nodoc
class _$CreateHintParamsCopyWithImpl<$Res, $Val extends CreateHintParams>
    implements $CreateHintParamsCopyWith<$Res> {
  _$CreateHintParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateHintParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? title = null,
    Object? type = null,
    Object? requiredTries = null,
    Object? isHidden = freezed,
    Object? description = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HintType,
      requiredTries: null == requiredTries
          ? _value.requiredTries
          : requiredTries // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateHintParamsImplCopyWith<$Res>
    implements $CreateHintParamsCopyWith<$Res> {
  factory _$$CreateHintParamsImplCopyWith(_$CreateHintParamsImpl value,
          $Res Function(_$CreateHintParamsImpl) then) =
      __$$CreateHintParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String dleId,
      String title,
      HintType type,
      int requiredTries,
      bool? isHidden,
      String description});
}

/// @nodoc
class __$$CreateHintParamsImplCopyWithImpl<$Res>
    extends _$CreateHintParamsCopyWithImpl<$Res, _$CreateHintParamsImpl>
    implements _$$CreateHintParamsImplCopyWith<$Res> {
  __$$CreateHintParamsImplCopyWithImpl(_$CreateHintParamsImpl _value,
      $Res Function(_$CreateHintParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateHintParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? title = null,
    Object? type = null,
    Object? requiredTries = null,
    Object? isHidden = freezed,
    Object? description = null,
  }) {
    return _then(_$CreateHintParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HintType,
      requiredTries: null == requiredTries
          ? _value.requiredTries
          : requiredTries // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateHintParamsImpl implements _CreateHintParams {
  const _$CreateHintParamsImpl(
      {required this.userId,
      required this.dleId,
      required this.title,
      required this.type,
      required this.requiredTries,
      this.isHidden,
      this.description = ''});

  factory _$CreateHintParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateHintParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;
  @override
  final String title;
  @override
  final HintType type;
  @override
  final int requiredTries;
  @override
  final bool? isHidden;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'CreateHintParams(userId: $userId, dleId: $dleId, title: $title, type: $type, requiredTries: $requiredTries, isHidden: $isHidden, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateHintParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.requiredTries, requiredTries) ||
                other.requiredTries == requiredTries) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId, title, type,
      requiredTries, isHidden, description);

  /// Create a copy of CreateHintParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateHintParamsImplCopyWith<_$CreateHintParamsImpl> get copyWith =>
      __$$CreateHintParamsImplCopyWithImpl<_$CreateHintParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateHintParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateHintParams implements CreateHintParams {
  const factory _CreateHintParams(
      {required final String userId,
      required final String dleId,
      required final String title,
      required final HintType type,
      required final int requiredTries,
      final bool? isHidden,
      final String description}) = _$CreateHintParamsImpl;

  factory _CreateHintParams.fromJson(Map<String, dynamic> json) =
      _$CreateHintParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;
  @override
  String get title;
  @override
  HintType get type;
  @override
  int get requiredTries;
  @override
  bool? get isHidden;
  @override
  String get description;

  /// Create a copy of CreateHintParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateHintParamsImplCopyWith<_$CreateHintParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
