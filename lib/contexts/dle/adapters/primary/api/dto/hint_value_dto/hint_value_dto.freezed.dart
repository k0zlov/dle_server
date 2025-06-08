// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hint_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HintValueDto _$HintValueDtoFromJson(Map<String, dynamic> json) {
  return _HintValueDto.fromJson(json);
}

/// @nodoc
mixin _$HintValueDto {
  HintType get type => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  /// Serializes this HintValueDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HintValueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HintValueDtoCopyWith<HintValueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HintValueDtoCopyWith<$Res> {
  factory $HintValueDtoCopyWith(
          HintValueDto value, $Res Function(HintValueDto) then) =
      _$HintValueDtoCopyWithImpl<$Res, HintValueDto>;
  @useResult
  $Res call({HintType type, dynamic data});
}

/// @nodoc
class _$HintValueDtoCopyWithImpl<$Res, $Val extends HintValueDto>
    implements $HintValueDtoCopyWith<$Res> {
  _$HintValueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HintValueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HintType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HintValueDtoImplCopyWith<$Res>
    implements $HintValueDtoCopyWith<$Res> {
  factory _$$HintValueDtoImplCopyWith(
          _$HintValueDtoImpl value, $Res Function(_$HintValueDtoImpl) then) =
      __$$HintValueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HintType type, dynamic data});
}

/// @nodoc
class __$$HintValueDtoImplCopyWithImpl<$Res>
    extends _$HintValueDtoCopyWithImpl<$Res, _$HintValueDtoImpl>
    implements _$$HintValueDtoImplCopyWith<$Res> {
  __$$HintValueDtoImplCopyWithImpl(
      _$HintValueDtoImpl _value, $Res Function(_$HintValueDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HintValueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_$HintValueDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HintType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HintValueDtoImpl implements _HintValueDto {
  const _$HintValueDtoImpl({required this.type, required this.data});

  factory _$HintValueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HintValueDtoImplFromJson(json);

  @override
  final HintType type;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'HintValueDto(type: $type, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HintValueDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, const DeepCollectionEquality().hash(data));

  /// Create a copy of HintValueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HintValueDtoImplCopyWith<_$HintValueDtoImpl> get copyWith =>
      __$$HintValueDtoImplCopyWithImpl<_$HintValueDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HintValueDtoImplToJson(
      this,
    );
  }
}

abstract class _HintValueDto implements HintValueDto {
  const factory _HintValueDto(
      {required final HintType type,
      required final dynamic data}) = _$HintValueDtoImpl;

  factory _HintValueDto.fromJson(Map<String, dynamic> json) =
      _$HintValueDtoImpl.fromJson;

  @override
  HintType get type;
  @override
  dynamic get data;

  /// Create a copy of HintValueDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HintValueDtoImplCopyWith<_$HintValueDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
