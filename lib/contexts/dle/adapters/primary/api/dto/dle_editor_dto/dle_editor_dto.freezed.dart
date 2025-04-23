// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dle_editor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DleEditorDto _$DleEditorDtoFromJson(Map<String, dynamic> json) {
  return _DleEditorDto.fromJson(json);
}

/// @nodoc
mixin _$DleEditorDto {
  String get id => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DleEditorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DleEditorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DleEditorDtoCopyWith<DleEditorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DleEditorDtoCopyWith<$Res> {
  factory $DleEditorDtoCopyWith(
          DleEditorDto value, $Res Function(DleEditorDto) then) =
      _$DleEditorDtoCopyWithImpl<$Res, DleEditorDto>;
  @useResult
  $Res call(
      {String id,
      String dleId,
      String userId,
      String role,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class _$DleEditorDtoCopyWithImpl<$Res, $Val extends DleEditorDto>
    implements $DleEditorDtoCopyWith<$Res> {
  _$DleEditorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DleEditorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dleId = null,
    Object? userId = null,
    Object? role = null,
    Object? updatedAt = null,
    Object? createdAt = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DleEditorDtoImplCopyWith<$Res>
    implements $DleEditorDtoCopyWith<$Res> {
  factory _$$DleEditorDtoImplCopyWith(
          _$DleEditorDtoImpl value, $Res Function(_$DleEditorDtoImpl) then) =
      __$$DleEditorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String dleId,
      String userId,
      String role,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class __$$DleEditorDtoImplCopyWithImpl<$Res>
    extends _$DleEditorDtoCopyWithImpl<$Res, _$DleEditorDtoImpl>
    implements _$$DleEditorDtoImplCopyWith<$Res> {
  __$$DleEditorDtoImplCopyWithImpl(
      _$DleEditorDtoImpl _value, $Res Function(_$DleEditorDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DleEditorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dleId = null,
    Object? userId = null,
    Object? role = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$DleEditorDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DleEditorDtoImpl implements _DleEditorDto {
  const _$DleEditorDtoImpl(
      {required this.id,
      required this.dleId,
      required this.userId,
      required this.role,
      required this.updatedAt,
      required this.createdAt});

  factory _$DleEditorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DleEditorDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String dleId;
  @override
  final String userId;
  @override
  final String role;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DleEditorDto(id: $id, dleId: $dleId, userId: $userId, role: $role, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DleEditorDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dleId, userId, role, updatedAt, createdAt);

  /// Create a copy of DleEditorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DleEditorDtoImplCopyWith<_$DleEditorDtoImpl> get copyWith =>
      __$$DleEditorDtoImplCopyWithImpl<_$DleEditorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DleEditorDtoImplToJson(
      this,
    );
  }
}

abstract class _DleEditorDto implements DleEditorDto {
  const factory _DleEditorDto(
      {required final String id,
      required final String dleId,
      required final String userId,
      required final String role,
      required final DateTime updatedAt,
      required final DateTime createdAt}) = _$DleEditorDtoImpl;

  factory _DleEditorDto.fromJson(Map<String, dynamic> json) =
      _$DleEditorDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get dleId;
  @override
  String get userId;
  @override
  String get role;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of DleEditorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DleEditorDtoImplCopyWith<_$DleEditorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
