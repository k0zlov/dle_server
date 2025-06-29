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
  List<int> get bytes => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

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
      List<int> bytes,
      String mimeType,
      String description});
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
    Object? bytes = null,
    Object? mimeType = null,
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
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      List<int> bytes,
      String mimeType,
      String description});
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
    Object? bytes = null,
    Object? mimeType = null,
    Object? description = null,
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
      bytes: null == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAssetParamsImpl implements _CreateAssetParams {
  const _$CreateAssetParamsImpl(
      {required this.userId,
      required this.dleId,
      required final List<int> bytes,
      required this.mimeType,
      this.description = ''})
      : _bytes = bytes;

  factory _$CreateAssetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAssetParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;
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
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'CreateAssetParams(userId: $userId, dleId: $dleId, bytes: $bytes, mimeType: $mimeType, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAssetParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId,
      const DeepCollectionEquality().hash(_bytes), mimeType, description);

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
      required final List<int> bytes,
      required final String mimeType,
      final String description}) = _$CreateAssetParamsImpl;

  factory _CreateAssetParams.fromJson(Map<String, dynamic> json) =
      _$CreateAssetParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;
  @override
  List<int> get bytes;
  @override
  String get mimeType;
  @override
  String get description;

  /// Create a copy of CreateAssetParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAssetParamsImplCopyWith<_$CreateAssetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
