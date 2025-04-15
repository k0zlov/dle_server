// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_up_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetUpProfileParams _$SetUpProfileParamsFromJson(Map<String, dynamic> json) {
  return _SetUpProfileParams.fromJson(json);
}

/// @nodoc
mixin _$SetUpProfileParams {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  List<int>? get pictureBytes => throw _privateConstructorUsedError;

  /// Serializes this SetUpProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetUpProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetUpProfileParamsCopyWith<SetUpProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetUpProfileParamsCopyWith<$Res> {
  factory $SetUpProfileParamsCopyWith(
          SetUpProfileParams value, $Res Function(SetUpProfileParams) then) =
      _$SetUpProfileParamsCopyWithImpl<$Res, SetUpProfileParams>;
  @useResult
  $Res call(
      {String userId,
      String username,
      String? mimeType,
      List<int>? pictureBytes});
}

/// @nodoc
class _$SetUpProfileParamsCopyWithImpl<$Res, $Val extends SetUpProfileParams>
    implements $SetUpProfileParamsCopyWith<$Res> {
  _$SetUpProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetUpProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? mimeType = freezed,
    Object? pictureBytes = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureBytes: freezed == pictureBytes
          ? _value.pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetUpProfileParamsImplCopyWith<$Res>
    implements $SetUpProfileParamsCopyWith<$Res> {
  factory _$$SetUpProfileParamsImplCopyWith(_$SetUpProfileParamsImpl value,
          $Res Function(_$SetUpProfileParamsImpl) then) =
      __$$SetUpProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String username,
      String? mimeType,
      List<int>? pictureBytes});
}

/// @nodoc
class __$$SetUpProfileParamsImplCopyWithImpl<$Res>
    extends _$SetUpProfileParamsCopyWithImpl<$Res, _$SetUpProfileParamsImpl>
    implements _$$SetUpProfileParamsImplCopyWith<$Res> {
  __$$SetUpProfileParamsImplCopyWithImpl(_$SetUpProfileParamsImpl _value,
      $Res Function(_$SetUpProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetUpProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? mimeType = freezed,
    Object? pictureBytes = freezed,
  }) {
    return _then(_$SetUpProfileParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureBytes: freezed == pictureBytes
          ? _value._pictureBytes
          : pictureBytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetUpProfileParamsImpl implements _SetUpProfileParams {
  const _$SetUpProfileParamsImpl(
      {required this.userId,
      required this.username,
      this.mimeType,
      final List<int>? pictureBytes})
      : _pictureBytes = pictureBytes;

  factory _$SetUpProfileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetUpProfileParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String username;
  @override
  final String? mimeType;
  final List<int>? _pictureBytes;
  @override
  List<int>? get pictureBytes {
    final value = _pictureBytes;
    if (value == null) return null;
    if (_pictureBytes is EqualUnmodifiableListView) return _pictureBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SetUpProfileParams(userId: $userId, username: $username, mimeType: $mimeType, pictureBytes: $pictureBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUpProfileParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality()
                .equals(other._pictureBytes, _pictureBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, mimeType,
      const DeepCollectionEquality().hash(_pictureBytes));

  /// Create a copy of SetUpProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUpProfileParamsImplCopyWith<_$SetUpProfileParamsImpl> get copyWith =>
      __$$SetUpProfileParamsImplCopyWithImpl<_$SetUpProfileParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetUpProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _SetUpProfileParams implements SetUpProfileParams {
  const factory _SetUpProfileParams(
      {required final String userId,
      required final String username,
      final String? mimeType,
      final List<int>? pictureBytes}) = _$SetUpProfileParamsImpl;

  factory _SetUpProfileParams.fromJson(Map<String, dynamic> json) =
      _$SetUpProfileParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get username;
  @override
  String? get mimeType;
  @override
  List<int>? get pictureBytes;

  /// Create a copy of SetUpProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUpProfileParamsImplCopyWith<_$SetUpProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
