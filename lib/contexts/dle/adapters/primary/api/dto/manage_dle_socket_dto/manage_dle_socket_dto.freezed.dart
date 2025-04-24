// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_dle_socket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageDleSocketDto _$ManageDleSocketDtoFromJson(Map<String, dynamic> json) {
  return _ManageDleSocketDto.fromJson(json);
}

/// @nodoc
mixin _$ManageDleSocketDto {
  ManageDleSocketEventType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ManageDleDto> get dtoList => throw _privateConstructorUsedError;

  /// Serializes this ManageDleSocketDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageDleSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageDleSocketDtoCopyWith<ManageDleSocketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageDleSocketDtoCopyWith<$Res> {
  factory $ManageDleSocketDtoCopyWith(
          ManageDleSocketDto value, $Res Function(ManageDleSocketDto) then) =
      _$ManageDleSocketDtoCopyWithImpl<$Res, ManageDleSocketDto>;
  @useResult
  $Res call(
      {ManageDleSocketEventType type,
      @JsonKey(name: 'items') List<ManageDleDto> dtoList});
}

/// @nodoc
class _$ManageDleSocketDtoCopyWithImpl<$Res, $Val extends ManageDleSocketDto>
    implements $ManageDleSocketDtoCopyWith<$Res> {
  _$ManageDleSocketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageDleSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dtoList = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ManageDleSocketEventType,
      dtoList: null == dtoList
          ? _value.dtoList
          : dtoList // ignore: cast_nullable_to_non_nullable
              as List<ManageDleDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageDleSocketDtoImplCopyWith<$Res>
    implements $ManageDleSocketDtoCopyWith<$Res> {
  factory _$$ManageDleSocketDtoImplCopyWith(_$ManageDleSocketDtoImpl value,
          $Res Function(_$ManageDleSocketDtoImpl) then) =
      __$$ManageDleSocketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ManageDleSocketEventType type,
      @JsonKey(name: 'items') List<ManageDleDto> dtoList});
}

/// @nodoc
class __$$ManageDleSocketDtoImplCopyWithImpl<$Res>
    extends _$ManageDleSocketDtoCopyWithImpl<$Res, _$ManageDleSocketDtoImpl>
    implements _$$ManageDleSocketDtoImplCopyWith<$Res> {
  __$$ManageDleSocketDtoImplCopyWithImpl(_$ManageDleSocketDtoImpl _value,
      $Res Function(_$ManageDleSocketDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageDleSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dtoList = null,
  }) {
    return _then(_$ManageDleSocketDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ManageDleSocketEventType,
      dtoList: null == dtoList
          ? _value._dtoList
          : dtoList // ignore: cast_nullable_to_non_nullable
              as List<ManageDleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManageDleSocketDtoImpl implements _ManageDleSocketDto {
  const _$ManageDleSocketDtoImpl(
      {required this.type,
      @JsonKey(name: 'items') required final List<ManageDleDto> dtoList})
      : _dtoList = dtoList;

  factory _$ManageDleSocketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageDleSocketDtoImplFromJson(json);

  @override
  final ManageDleSocketEventType type;
  final List<ManageDleDto> _dtoList;
  @override
  @JsonKey(name: 'items')
  List<ManageDleDto> get dtoList {
    if (_dtoList is EqualUnmodifiableListView) return _dtoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dtoList);
  }

  @override
  String toString() {
    return 'ManageDleSocketDto(type: $type, dtoList: $dtoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageDleSocketDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._dtoList, _dtoList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_dtoList));

  /// Create a copy of ManageDleSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageDleSocketDtoImplCopyWith<_$ManageDleSocketDtoImpl> get copyWith =>
      __$$ManageDleSocketDtoImplCopyWithImpl<_$ManageDleSocketDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageDleSocketDtoImplToJson(
      this,
    );
  }
}

abstract class _ManageDleSocketDto implements ManageDleSocketDto {
  const factory _ManageDleSocketDto(
          {required final ManageDleSocketEventType type,
          @JsonKey(name: 'items') required final List<ManageDleDto> dtoList}) =
      _$ManageDleSocketDtoImpl;

  factory _ManageDleSocketDto.fromJson(Map<String, dynamic> json) =
      _$ManageDleSocketDtoImpl.fromJson;

  @override
  ManageDleSocketEventType get type;
  @override
  @JsonKey(name: 'items')
  List<ManageDleDto> get dtoList;

  /// Create a copy of ManageDleSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageDleSocketDtoImplCopyWith<_$ManageDleSocketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
