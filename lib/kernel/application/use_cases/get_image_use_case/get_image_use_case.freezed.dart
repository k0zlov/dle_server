// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_image_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetImageParams _$GetImageParamsFromJson(Map<String, dynamic> json) {
  return _GetImageParams.fromJson(json);
}

/// @nodoc
mixin _$GetImageParams {
  String get uploadId => throw _privateConstructorUsedError;
  ({int height, int width})? get dimensions =>
      throw _privateConstructorUsedError;

  /// Serializes this GetImageParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetImageParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetImageParamsCopyWith<GetImageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetImageParamsCopyWith<$Res> {
  factory $GetImageParamsCopyWith(
          GetImageParams value, $Res Function(GetImageParams) then) =
      _$GetImageParamsCopyWithImpl<$Res, GetImageParams>;
  @useResult
  $Res call({String uploadId, ({int height, int width})? dimensions});
}

/// @nodoc
class _$GetImageParamsCopyWithImpl<$Res, $Val extends GetImageParams>
    implements $GetImageParamsCopyWith<$Res> {
  _$GetImageParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetImageParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadId = null,
    Object? dimensions = freezed,
  }) {
    return _then(_value.copyWith(
      uploadId: null == uploadId
          ? _value.uploadId
          : uploadId // ignore: cast_nullable_to_non_nullable
              as String,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as ({int height, int width})?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetImageParamsImplCopyWith<$Res>
    implements $GetImageParamsCopyWith<$Res> {
  factory _$$GetImageParamsImplCopyWith(_$GetImageParamsImpl value,
          $Res Function(_$GetImageParamsImpl) then) =
      __$$GetImageParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uploadId, ({int height, int width})? dimensions});
}

/// @nodoc
class __$$GetImageParamsImplCopyWithImpl<$Res>
    extends _$GetImageParamsCopyWithImpl<$Res, _$GetImageParamsImpl>
    implements _$$GetImageParamsImplCopyWith<$Res> {
  __$$GetImageParamsImplCopyWithImpl(
      _$GetImageParamsImpl _value, $Res Function(_$GetImageParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetImageParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadId = null,
    Object? dimensions = freezed,
  }) {
    return _then(_$GetImageParamsImpl(
      uploadId: null == uploadId
          ? _value.uploadId
          : uploadId // ignore: cast_nullable_to_non_nullable
              as String,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as ({int height, int width})?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetImageParamsImpl implements _GetImageParams {
  const _$GetImageParamsImpl({required this.uploadId, this.dimensions});

  factory _$GetImageParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetImageParamsImplFromJson(json);

  @override
  final String uploadId;
  @override
  final ({int height, int width})? dimensions;

  @override
  String toString() {
    return 'GetImageParams(uploadId: $uploadId, dimensions: $dimensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageParamsImpl &&
            (identical(other.uploadId, uploadId) ||
                other.uploadId == uploadId) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uploadId, dimensions);

  /// Create a copy of GetImageParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageParamsImplCopyWith<_$GetImageParamsImpl> get copyWith =>
      __$$GetImageParamsImplCopyWithImpl<_$GetImageParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetImageParamsImplToJson(
      this,
    );
  }
}

abstract class _GetImageParams implements GetImageParams {
  const factory _GetImageParams(
      {required final String uploadId,
      final ({int height, int width})? dimensions}) = _$GetImageParamsImpl;

  factory _GetImageParams.fromJson(Map<String, dynamic> json) =
      _$GetImageParamsImpl.fromJson;

  @override
  String get uploadId;
  @override
  ({int height, int width})? get dimensions;

  /// Create a copy of GetImageParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetImageParamsImplCopyWith<_$GetImageParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
