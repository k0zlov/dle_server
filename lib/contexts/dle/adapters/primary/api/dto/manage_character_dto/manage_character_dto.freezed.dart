// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_character_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageCharacterDto _$ManageCharacterDtoFromJson(Map<String, dynamic> json) {
  return _ManageCharacterDto.fromJson(json);
}

/// @nodoc
mixin _$ManageCharacterDto {
  String get id => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get aliases => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get imageId => throw _privateConstructorUsedError;

  /// Serializes this ManageCharacterDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageCharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageCharacterDtoCopyWith<ManageCharacterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCharacterDtoCopyWith<$Res> {
  factory $ManageCharacterDtoCopyWith(
          ManageCharacterDto value, $Res Function(ManageCharacterDto) then) =
      _$ManageCharacterDtoCopyWithImpl<$Res, ManageCharacterDto>;
  @useResult
  $Res call(
      {String id,
      String dleId,
      String name,
      List<String> aliases,
      bool isHidden,
      DateTime updatedAt,
      DateTime createdAt,
      String? imageId});
}

/// @nodoc
class _$ManageCharacterDtoCopyWithImpl<$Res, $Val extends ManageCharacterDto>
    implements $ManageCharacterDtoCopyWith<$Res> {
  _$ManageCharacterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageCharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dleId = null,
    Object? name = null,
    Object? aliases = null,
    Object? isHidden = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? imageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      aliases: null == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageCharacterDtoImplCopyWith<$Res>
    implements $ManageCharacterDtoCopyWith<$Res> {
  factory _$$ManageCharacterDtoImplCopyWith(_$ManageCharacterDtoImpl value,
          $Res Function(_$ManageCharacterDtoImpl) then) =
      __$$ManageCharacterDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String dleId,
      String name,
      List<String> aliases,
      bool isHidden,
      DateTime updatedAt,
      DateTime createdAt,
      String? imageId});
}

/// @nodoc
class __$$ManageCharacterDtoImplCopyWithImpl<$Res>
    extends _$ManageCharacterDtoCopyWithImpl<$Res, _$ManageCharacterDtoImpl>
    implements _$$ManageCharacterDtoImplCopyWith<$Res> {
  __$$ManageCharacterDtoImplCopyWithImpl(_$ManageCharacterDtoImpl _value,
      $Res Function(_$ManageCharacterDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageCharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dleId = null,
    Object? name = null,
    Object? aliases = null,
    Object? isHidden = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? imageId = freezed,
  }) {
    return _then(_$ManageCharacterDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      aliases: null == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManageCharacterDtoImpl implements _ManageCharacterDto {
  const _$ManageCharacterDtoImpl(
      {required this.id,
      required this.dleId,
      required this.name,
      required final List<String> aliases,
      required this.isHidden,
      required this.updatedAt,
      required this.createdAt,
      this.imageId})
      : _aliases = aliases;

  factory _$ManageCharacterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageCharacterDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String dleId;
  @override
  final String name;
  final List<String> _aliases;
  @override
  List<String> get aliases {
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aliases);
  }

  @override
  final bool isHidden;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  @override
  final String? imageId;

  @override
  String toString() {
    return 'ManageCharacterDto(id: $id, dleId: $dleId, name: $name, aliases: $aliases, isHidden: $isHidden, updatedAt: $updatedAt, createdAt: $createdAt, imageId: $imageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageCharacterDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.imageId, imageId) || other.imageId == imageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dleId,
      name,
      const DeepCollectionEquality().hash(_aliases),
      isHidden,
      updatedAt,
      createdAt,
      imageId);

  /// Create a copy of ManageCharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageCharacterDtoImplCopyWith<_$ManageCharacterDtoImpl> get copyWith =>
      __$$ManageCharacterDtoImplCopyWithImpl<_$ManageCharacterDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageCharacterDtoImplToJson(
      this,
    );
  }
}

abstract class _ManageCharacterDto implements ManageCharacterDto {
  const factory _ManageCharacterDto(
      {required final String id,
      required final String dleId,
      required final String name,
      required final List<String> aliases,
      required final bool isHidden,
      required final DateTime updatedAt,
      required final DateTime createdAt,
      final String? imageId}) = _$ManageCharacterDtoImpl;

  factory _ManageCharacterDto.fromJson(Map<String, dynamic> json) =
      _$ManageCharacterDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get dleId;
  @override
  String get name;
  @override
  List<String> get aliases;
  @override
  bool get isHidden;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;
  @override
  String? get imageId;

  /// Create a copy of ManageCharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageCharacterDtoImplCopyWith<_$ManageCharacterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
