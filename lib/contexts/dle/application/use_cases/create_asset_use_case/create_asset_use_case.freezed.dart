// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_asset_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateAssetParams _$CreateAssetParamsFromJson(Map<String, dynamic> json) {
  return _CreateAssetParams.fromJson(json);
}

/// @nodoc
mixin _$CreateAssetParams {
  String get userId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  DleAssetType get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<int>? get bytes => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;

  /// Serializes this CreateAssetParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAssetParamsCopyWith<CreateAssetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAssetParamsCopyWith<$Res> {
  factory $CreateAssetParamsCopyWith(
          CreateAssetParams value, $Res Function(CreateAssetParams) then) =
      _$CreateAssetParamsCopyWithImpl<$Res, CreateAssetParams>;
  @useResult
  $Res call(
      {String userId,
      String dleId,
      DleAssetType type,
      String? description,
      List<int>? bytes,
      String? mimeType});
}

/// @nodoc
class _$CreateAssetParamsCopyWithImpl<$Res, $Val extends CreateAssetParams>
    implements $CreateAssetParamsCopyWith<$Res> {
  _$CreateAssetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? type = null,
    Object? description = freezed,
    Object? bytes = freezed,
    Object? mimeType = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DleAssetType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAssetParamsImplCopyWith<$Res>
    implements $CreateAssetParamsCopyWith<$Res> {
  factory _$$CreateAssetParamsImplCopyWith(_$CreateAssetParamsImpl value,
          $Res Function(_$CreateAssetParamsImpl) then) =
      __$$CreateAssetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String dleId,
      DleAssetType type,
      String? description,
      List<int>? bytes,
      String? mimeType});
}

/// @nodoc
class __$$CreateAssetParamsImplCopyWithImpl<$Res>
    extends _$CreateAssetParamsCopyWithImpl<$Res, _$CreateAssetParamsImpl>
    implements _$$CreateAssetParamsImplCopyWith<$Res> {
  __$$CreateAssetParamsImplCopyWithImpl(_$CreateAssetParamsImpl _value,
      $Res Function(_$CreateAssetParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? type = null,
    Object? description = freezed,
    Object? bytes = freezed,
    Object? mimeType = freezed,
  }) {
    return _then(_$CreateAssetParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DleAssetType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAssetParamsImpl implements _CreateAssetParams {
  const _$CreateAssetParamsImpl(
      {required this.userId,
      required this.dleId,
      required this.type,
      this.description,
      final List<int>? bytes,
      this.mimeType})
      : _bytes = bytes;

  factory _$CreateAssetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAssetParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;
  @override
  final DleAssetType type;
  @override
  final String? description;
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
  String toString() {
    return 'CreateAssetParams(userId: $userId, dleId: $dleId, type: $type, description: $description, bytes: $bytes, mimeType: $mimeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAssetParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId, type, description,
      const DeepCollectionEquality().hash(_bytes), mimeType);

  /// Create a copy of CreateAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAssetParamsImplCopyWith<_$CreateAssetParamsImpl> get copyWith =>
      __$$CreateAssetParamsImplCopyWithImpl<_$CreateAssetParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAssetParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateAssetParams implements CreateAssetParams {
  const factory _CreateAssetParams(
      {required final String userId,
      required final String dleId,
      required final DleAssetType type,
      final String? description,
      final List<int>? bytes,
      final String? mimeType}) = _$CreateAssetParamsImpl;

  factory _CreateAssetParams.fromJson(Map<String, dynamic> json) =
      _$CreateAssetParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;
  @override
  DleAssetType get type;
  @override
  String? get description;
  @override
  List<int>? get bytes;
  @override
  String? get mimeType;

  /// Create a copy of CreateAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAssetParamsImplCopyWith<_$CreateAssetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
