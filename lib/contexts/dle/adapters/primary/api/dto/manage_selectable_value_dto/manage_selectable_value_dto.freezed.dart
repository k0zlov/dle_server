// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_selectable_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageSelectableValueDto _$ManageSelectableValueDtoFromJson(
    Map<String, dynamic> json) {
  return _ManageSelectableValueDto.fromJson(json);
}

/// @nodoc
mixin _$ManageSelectableValueDto {
  String get id => throw _privateConstructorUsedError;
  String get parameterId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ManageSelectableValueDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageSelectableValueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageSelectableValueDtoCopyWith<ManageSelectableValueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageSelectableValueDtoCopyWith<$Res> {
  factory $ManageSelectableValueDtoCopyWith(ManageSelectableValueDto value,
          $Res Function(ManageSelectableValueDto) then) =
      _$ManageSelectableValueDtoCopyWithImpl<$Res, ManageSelectableValueDto>;
  @useResult
  $Res call(
      {String id,
      String parameterId,
      String value,
      String title,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class _$ManageSelectableValueDtoCopyWithImpl<$Res,
        $Val extends ManageSelectableValueDto>
    implements $ManageSelectableValueDtoCopyWith<$Res> {
  _$ManageSelectableValueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageSelectableValueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameterId = null,
    Object? value = null,
    Object? title = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ManageSelectableValueDtoImplCopyWith<$Res>
    implements $ManageSelectableValueDtoCopyWith<$Res> {
  factory _$$ManageSelectableValueDtoImplCopyWith(
          _$ManageSelectableValueDtoImpl value,
          $Res Function(_$ManageSelectableValueDtoImpl) then) =
      __$$ManageSelectableValueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String parameterId,
      String value,
      String title,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class __$$ManageSelectableValueDtoImplCopyWithImpl<$Res>
    extends _$ManageSelectableValueDtoCopyWithImpl<$Res,
        _$ManageSelectableValueDtoImpl>
    implements _$$ManageSelectableValueDtoImplCopyWith<$Res> {
  __$$ManageSelectableValueDtoImplCopyWithImpl(
      _$ManageSelectableValueDtoImpl _value,
      $Res Function(_$ManageSelectableValueDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageSelectableValueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameterId = null,
    Object? value = null,
    Object? title = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$ManageSelectableValueDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$ManageSelectableValueDtoImpl implements _ManageSelectableValueDto {
  const _$ManageSelectableValueDtoImpl(
      {required this.id,
      required this.parameterId,
      required this.value,
      required this.title,
      required this.updatedAt,
      required this.createdAt});

  factory _$ManageSelectableValueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageSelectableValueDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String parameterId;
  @override
  final String value;
  @override
  final String title;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ManageSelectableValueDto(id: $id, parameterId: $parameterId, value: $value, title: $title, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageSelectableValueDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parameterId, value, title, updatedAt, createdAt);

  /// Create a copy of ManageSelectableValueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageSelectableValueDtoImplCopyWith<_$ManageSelectableValueDtoImpl>
      get copyWith => __$$ManageSelectableValueDtoImplCopyWithImpl<
          _$ManageSelectableValueDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageSelectableValueDtoImplToJson(
      this,
    );
  }
}

abstract class _ManageSelectableValueDto implements ManageSelectableValueDto {
  const factory _ManageSelectableValueDto(
      {required final String id,
      required final String parameterId,
      required final String value,
      required final String title,
      required final DateTime updatedAt,
      required final DateTime createdAt}) = _$ManageSelectableValueDtoImpl;

  factory _ManageSelectableValueDto.fromJson(Map<String, dynamic> json) =
      _$ManageSelectableValueDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get parameterId;
  @override
  String get value;
  @override
  String get title;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of ManageSelectableValueDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageSelectableValueDtoImplCopyWith<_$ManageSelectableValueDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
