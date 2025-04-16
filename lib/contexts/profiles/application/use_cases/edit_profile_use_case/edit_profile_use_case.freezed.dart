// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditProfileParams _$EditProfileParamsFromJson(Map<String, dynamic> json) {
  return _EditProfileParams.fromJson(json);
}

/// @nodoc
mixin _$EditProfileParams {
  String get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  List<int>? get pictureBytes => throw _privateConstructorUsedError;

  /// Serializes this EditProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditProfileParamsCopyWith<EditProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileParamsCopyWith<$Res> {
  factory $EditProfileParamsCopyWith(
          EditProfileParams value, $Res Function(EditProfileParams) then) =
      _$EditProfileParamsCopyWithImpl<$Res, EditProfileParams>;
  @useResult
  $Res call(
      {String userId,
      String? username,
      String? mimeType,
      List<int>? pictureBytes});
}

/// @nodoc
class _$EditProfileParamsCopyWithImpl<$Res, $Val extends EditProfileParams>
    implements $EditProfileParamsCopyWith<$Res> {
  _$EditProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = freezed,
    Object? mimeType = freezed,
    Object? pictureBytes = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$EditProfileParamsImplCopyWith<$Res>
    implements $EditProfileParamsCopyWith<$Res> {
  factory _$$EditProfileParamsImplCopyWith(_$EditProfileParamsImpl value,
          $Res Function(_$EditProfileParamsImpl) then) =
      __$$EditProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String? username,
      String? mimeType,
      List<int>? pictureBytes});
}

/// @nodoc
class __$$EditProfileParamsImplCopyWithImpl<$Res>
    extends _$EditProfileParamsCopyWithImpl<$Res, _$EditProfileParamsImpl>
    implements _$$EditProfileParamsImplCopyWith<$Res> {
  __$$EditProfileParamsImplCopyWithImpl(_$EditProfileParamsImpl _value,
      $Res Function(_$EditProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = freezed,
    Object? mimeType = freezed,
    Object? pictureBytes = freezed,
  }) {
    return _then(_$EditProfileParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$EditProfileParamsImpl implements _EditProfileParams {
  const _$EditProfileParamsImpl(
      {required this.userId,
      this.username,
      this.mimeType,
      final List<int>? pictureBytes})
      : _pictureBytes = pictureBytes;

  factory _$EditProfileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditProfileParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String? username;
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
    return 'EditProfileParams(userId: $userId, username: $username, mimeType: $mimeType, pictureBytes: $pictureBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileParamsImpl &&
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

  /// Create a copy of EditProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileParamsImplCopyWith<_$EditProfileParamsImpl> get copyWith =>
      __$$EditProfileParamsImplCopyWithImpl<_$EditProfileParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _EditProfileParams implements EditProfileParams {
  const factory _EditProfileParams(
      {required final String userId,
      final String? username,
      final String? mimeType,
      final List<int>? pictureBytes}) = _$EditProfileParamsImpl;

  factory _EditProfileParams.fromJson(Map<String, dynamic> json) =
      _$EditProfileParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String? get username;
  @override
  String? get mimeType;
  @override
  List<int>? get pictureBytes;

  /// Create a copy of EditProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileParamsImplCopyWith<_$EditProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
