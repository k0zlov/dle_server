// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_dle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageDleDto _$ManageDleDtoFromJson(Map<String, dynamic> json) {
  return _ManageDleDto.fromJson(json);
}

/// @nodoc
mixin _$ManageDleDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<DleEditorDto> get editors => throw _privateConstructorUsedError;
  List<DleAssetDto> get assets => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ManageDleDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageDleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageDleDtoCopyWith<ManageDleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageDleDtoCopyWith<$Res> {
  factory $ManageDleDtoCopyWith(
          ManageDleDto value, $Res Function(ManageDleDto) then) =
      _$ManageDleDtoCopyWithImpl<$Res, ManageDleDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      bool isPrivate,
      DateTime updatedAt,
      DateTime createdAt,
      List<DleEditorDto> editors,
      List<DleAssetDto> assets,
      String? description});
}

/// @nodoc
class _$ManageDleDtoCopyWithImpl<$Res, $Val extends ManageDleDto>
    implements $ManageDleDtoCopyWith<$Res> {
  _$ManageDleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageDleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? isPrivate = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? editors = null,
    Object? assets = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      editors: null == editors
          ? _value.editors
          : editors // ignore: cast_nullable_to_non_nullable
              as List<DleEditorDto>,
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<DleAssetDto>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageDleDtoImplCopyWith<$Res>
    implements $ManageDleDtoCopyWith<$Res> {
  factory _$$ManageDleDtoImplCopyWith(
          _$ManageDleDtoImpl value, $Res Function(_$ManageDleDtoImpl) then) =
      __$$ManageDleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      bool isPrivate,
      DateTime updatedAt,
      DateTime createdAt,
      List<DleEditorDto> editors,
      List<DleAssetDto> assets,
      String? description});
}

/// @nodoc
class __$$ManageDleDtoImplCopyWithImpl<$Res>
    extends _$ManageDleDtoCopyWithImpl<$Res, _$ManageDleDtoImpl>
    implements _$$ManageDleDtoImplCopyWith<$Res> {
  __$$ManageDleDtoImplCopyWithImpl(
      _$ManageDleDtoImpl _value, $Res Function(_$ManageDleDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageDleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? isPrivate = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? editors = null,
    Object? assets = null,
    Object? description = freezed,
  }) {
    return _then(_$ManageDleDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      editors: null == editors
          ? _value._editors
          : editors // ignore: cast_nullable_to_non_nullable
              as List<DleEditorDto>,
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<DleAssetDto>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManageDleDtoImpl implements _ManageDleDto {
  const _$ManageDleDtoImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.isPrivate,
      required this.updatedAt,
      required this.createdAt,
      required final List<DleEditorDto> editors,
      required final List<DleAssetDto> assets,
      this.description})
      : _editors = editors,
        _assets = assets;

  factory _$ManageDleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageDleDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final bool isPrivate;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  final List<DleEditorDto> _editors;
  @override
  List<DleEditorDto> get editors {
    if (_editors is EqualUnmodifiableListView) return _editors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editors);
  }

  final List<DleAssetDto> _assets;
  @override
  List<DleAssetDto> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  final String? description;

  @override
  String toString() {
    return 'ManageDleDto(id: $id, title: $title, type: $type, isPrivate: $isPrivate, updatedAt: $updatedAt, createdAt: $createdAt, editors: $editors, assets: $assets, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageDleDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._editors, _editors) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      isPrivate,
      updatedAt,
      createdAt,
      const DeepCollectionEquality().hash(_editors),
      const DeepCollectionEquality().hash(_assets),
      description);

  /// Create a copy of ManageDleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageDleDtoImplCopyWith<_$ManageDleDtoImpl> get copyWith =>
      __$$ManageDleDtoImplCopyWithImpl<_$ManageDleDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageDleDtoImplToJson(
      this,
    );
  }
}

abstract class _ManageDleDto implements ManageDleDto {
  const factory _ManageDleDto(
      {required final String id,
      required final String title,
      required final String type,
      required final bool isPrivate,
      required final DateTime updatedAt,
      required final DateTime createdAt,
      required final List<DleEditorDto> editors,
      required final List<DleAssetDto> assets,
      final String? description}) = _$ManageDleDtoImpl;

  factory _ManageDleDto.fromJson(Map<String, dynamic> json) =
      _$ManageDleDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get type;
  @override
  bool get isPrivate;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;
  @override
  List<DleEditorDto> get editors;
  @override
  List<DleAssetDto> get assets;
  @override
  String? get description;

  /// Create a copy of ManageDleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageDleDtoImplCopyWith<_$ManageDleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
