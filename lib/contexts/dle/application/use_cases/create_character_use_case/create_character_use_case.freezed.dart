// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_character_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCharacterParams _$CreateCharacterParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateCharacterParams.fromJson(json);
}

/// @nodoc
mixin _$CreateCharacterParams {
  String get userId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  List<String> get aliases => throw _privateConstructorUsedError;
  String? get assetId => throw _privateConstructorUsedError;

  /// Serializes this CreateCharacterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCharacterParamsCopyWith<CreateCharacterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCharacterParamsCopyWith<$Res> {
  factory $CreateCharacterParamsCopyWith(CreateCharacterParams value,
          $Res Function(CreateCharacterParams) then) =
      _$CreateCharacterParamsCopyWithImpl<$Res, CreateCharacterParams>;
  @useResult
  $Res call(
      {String userId,
      String dleId,
      String name,
      bool isHidden,
      List<String> aliases,
      String? assetId});
}

/// @nodoc
class _$CreateCharacterParamsCopyWithImpl<$Res,
        $Val extends CreateCharacterParams>
    implements $CreateCharacterParamsCopyWith<$Res> {
  _$CreateCharacterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? name = null,
    Object? isHidden = null,
    Object? aliases = null,
    Object? assetId = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      aliases: null == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCharacterParamsImplCopyWith<$Res>
    implements $CreateCharacterParamsCopyWith<$Res> {
  factory _$$CreateCharacterParamsImplCopyWith(
          _$CreateCharacterParamsImpl value,
          $Res Function(_$CreateCharacterParamsImpl) then) =
      __$$CreateCharacterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String dleId,
      String name,
      bool isHidden,
      List<String> aliases,
      String? assetId});
}

/// @nodoc
class __$$CreateCharacterParamsImplCopyWithImpl<$Res>
    extends _$CreateCharacterParamsCopyWithImpl<$Res,
        _$CreateCharacterParamsImpl>
    implements _$$CreateCharacterParamsImplCopyWith<$Res> {
  __$$CreateCharacterParamsImplCopyWithImpl(_$CreateCharacterParamsImpl _value,
      $Res Function(_$CreateCharacterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dleId = null,
    Object? name = null,
    Object? isHidden = null,
    Object? aliases = null,
    Object? assetId = freezed,
  }) {
    return _then(_$CreateCharacterParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      aliases: null == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCharacterParamsImpl implements _CreateCharacterParams {
  const _$CreateCharacterParamsImpl(
      {required this.userId,
      required this.dleId,
      required this.name,
      this.isHidden = false,
      final List<String> aliases = const [],
      this.assetId})
      : _aliases = aliases;

  factory _$CreateCharacterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCharacterParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String dleId;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isHidden;
  final List<String> _aliases;
  @override
  @JsonKey()
  List<String> get aliases {
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aliases);
  }

  @override
  final String? assetId;

  @override
  String toString() {
    return 'CreateCharacterParams(userId: $userId, dleId: $dleId, name: $name, isHidden: $isHidden, aliases: $aliases, assetId: $assetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCharacterParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            (identical(other.assetId, assetId) || other.assetId == assetId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, dleId, name, isHidden,
      const DeepCollectionEquality().hash(_aliases), assetId);

  /// Create a copy of CreateCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCharacterParamsImplCopyWith<_$CreateCharacterParamsImpl>
      get copyWith => __$$CreateCharacterParamsImplCopyWithImpl<
          _$CreateCharacterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCharacterParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateCharacterParams implements CreateCharacterParams {
  const factory _CreateCharacterParams(
      {required final String userId,
      required final String dleId,
      required final String name,
      final bool isHidden,
      final List<String> aliases,
      final String? assetId}) = _$CreateCharacterParamsImpl;

  factory _CreateCharacterParams.fromJson(Map<String, dynamic> json) =
      _$CreateCharacterParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get dleId;
  @override
  String get name;
  @override
  bool get isHidden;
  @override
  List<String> get aliases;
  @override
  String? get assetId;

  /// Create a copy of CreateCharacterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCharacterParamsImplCopyWith<_$CreateCharacterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
