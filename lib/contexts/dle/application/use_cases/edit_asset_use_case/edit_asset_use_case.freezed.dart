// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_asset_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditAssetParams _$EditAssetParamsFromJson(Map<String, dynamic> json) {
  return _EditAssetParams.fromJson(json);
}

/// @nodoc
mixin _$EditAssetParams {
  String get dleId => throw _privateConstructorUsedError;
  String get assetId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<int>? get bytes => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this EditAssetParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditAssetParamsCopyWith<EditAssetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAssetParamsCopyWith<$Res> {
  factory $EditAssetParamsCopyWith(
          EditAssetParams value, $Res Function(EditAssetParams) then) =
      _$EditAssetParamsCopyWithImpl<$Res, EditAssetParams>;
  @useResult
  $Res call(
      {String dleId,
      String assetId,
      String userId,
      List<int>? bytes,
      String? mimeType,
      String? description});
}

/// @nodoc
class _$EditAssetParamsCopyWithImpl<$Res, $Val extends EditAssetParams>
    implements $EditAssetParamsCopyWith<$Res> {
  _$EditAssetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? assetId = null,
    Object? userId = null,
    Object? bytes = freezed,
    Object? mimeType = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditAssetParamsImplCopyWith<$Res>
    implements $EditAssetParamsCopyWith<$Res> {
  factory _$$EditAssetParamsImplCopyWith(_$EditAssetParamsImpl value,
          $Res Function(_$EditAssetParamsImpl) then) =
      __$$EditAssetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dleId,
      String assetId,
      String userId,
      List<int>? bytes,
      String? mimeType,
      String? description});
}

/// @nodoc
class __$$EditAssetParamsImplCopyWithImpl<$Res>
    extends _$EditAssetParamsCopyWithImpl<$Res, _$EditAssetParamsImpl>
    implements _$$EditAssetParamsImplCopyWith<$Res> {
  __$$EditAssetParamsImplCopyWithImpl(
      _$EditAssetParamsImpl _value, $Res Function(_$EditAssetParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? assetId = null,
    Object? userId = null,
    Object? bytes = freezed,
    Object? mimeType = freezed,
    Object? description = freezed,
  }) {
    return _then(_$EditAssetParamsImpl(
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: freezed == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
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
class _$EditAssetParamsImpl implements _EditAssetParams {
  const _$EditAssetParamsImpl(
      {required this.dleId,
      required this.assetId,
      required this.userId,
      final List<int>? bytes,
      this.mimeType,
      this.description})
      : _bytes = bytes;

  factory _$EditAssetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditAssetParamsImplFromJson(json);

  @override
  final String dleId;
  @override
  final String assetId;
  @override
  final String userId;
  final List<int>? _bytes;
  @override
  List<int>? get bytes {
    final value = _bytes;
    if (value == null) return null;
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mimeType;
  @override
  final String? description;

  @override
  String toString() {
    return 'EditAssetParams(dleId: $dleId, assetId: $assetId, userId: $userId, bytes: $bytes, mimeType: $mimeType, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAssetParamsImpl &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dleId, assetId, userId,
      const DeepCollectionEquality().hash(_bytes), mimeType, description);

  /// Create a copy of EditAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAssetParamsImplCopyWith<_$EditAssetParamsImpl> get copyWith =>
      __$$EditAssetParamsImplCopyWithImpl<_$EditAssetParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditAssetParamsImplToJson(
      this,
    );
  }
}

abstract class _EditAssetParams implements EditAssetParams {
  const factory _EditAssetParams(
      {required final String dleId,
      required final String assetId,
      required final String userId,
      final List<int>? bytes,
      final String? mimeType,
      final String? description}) = _$EditAssetParamsImpl;

  factory _EditAssetParams.fromJson(Map<String, dynamic> json) =
      _$EditAssetParamsImpl.fromJson;

  @override
  String get dleId;
  @override
  String get assetId;
  @override
  String get userId;
  @override
  List<int>? get bytes;
  @override
  String? get mimeType;
  @override
  String? get description;

  /// Create a copy of EditAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditAssetParamsImplCopyWith<_$EditAssetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
