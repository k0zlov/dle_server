// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_upload_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveUploadParams _$SaveUploadParamsFromJson(Map<String, dynamic> json) {
  return _SaveUploadParams.fromJson(json);
}

/// @nodoc
mixin _$SaveUploadParams {
  List<int> get bytes => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this SaveUploadParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveUploadParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveUploadParamsCopyWith<SaveUploadParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveUploadParamsCopyWith<$Res> {
  factory $SaveUploadParamsCopyWith(
          SaveUploadParams value, $Res Function(SaveUploadParams) then) =
      _$SaveUploadParamsCopyWithImpl<$Res, SaveUploadParams>;
  @useResult
  $Res call({List<int> bytes, String mimeType, String userId});
}

/// @nodoc
class _$SaveUploadParamsCopyWithImpl<$Res, $Val extends SaveUploadParams>
    implements $SaveUploadParamsCopyWith<$Res> {
  _$SaveUploadParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveUploadParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? mimeType = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveUploadParamsImplCopyWith<$Res>
    implements $SaveUploadParamsCopyWith<$Res> {
  factory _$$SaveUploadParamsImplCopyWith(_$SaveUploadParamsImpl value,
          $Res Function(_$SaveUploadParamsImpl) then) =
      __$$SaveUploadParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> bytes, String mimeType, String userId});
}

/// @nodoc
class __$$SaveUploadParamsImplCopyWithImpl<$Res>
    extends _$SaveUploadParamsCopyWithImpl<$Res, _$SaveUploadParamsImpl>
    implements _$$SaveUploadParamsImplCopyWith<$Res> {
  __$$SaveUploadParamsImplCopyWithImpl(_$SaveUploadParamsImpl _value,
      $Res Function(_$SaveUploadParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveUploadParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? mimeType = null,
    Object? userId = null,
  }) {
    return _then(_$SaveUploadParamsImpl(
      bytes: null == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveUploadParamsImpl implements _SaveUploadParams {
  const _$SaveUploadParamsImpl(
      {required final List<int> bytes,
      required this.mimeType,
      required this.userId})
      : _bytes = bytes;

  factory _$SaveUploadParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveUploadParamsImplFromJson(json);

  final List<int> _bytes;
  @override
  List<int> get bytes {
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytes);
  }

  @override
  final String mimeType;
  @override
  final String userId;

  @override
  String toString() {
    return 'SaveUploadParams(bytes: $bytes, mimeType: $mimeType, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUploadParamsImpl &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytes), mimeType, userId);

  /// Create a copy of SaveUploadParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUploadParamsImplCopyWith<_$SaveUploadParamsImpl> get copyWith =>
      __$$SaveUploadParamsImplCopyWithImpl<_$SaveUploadParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveUploadParamsImplToJson(
      this,
    );
  }
}

abstract class _SaveUploadParams implements SaveUploadParams {
  const factory _SaveUploadParams(
      {required final List<int> bytes,
      required final String mimeType,
      required final String userId}) = _$SaveUploadParamsImpl;

  factory _SaveUploadParams.fromJson(Map<String, dynamic> json) =
      _$SaveUploadParamsImpl.fromJson;

  @override
  List<int> get bytes;
  @override
  String get mimeType;
  @override
  String get userId;

  /// Create a copy of SaveUploadParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveUploadParamsImplCopyWith<_$SaveUploadParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
