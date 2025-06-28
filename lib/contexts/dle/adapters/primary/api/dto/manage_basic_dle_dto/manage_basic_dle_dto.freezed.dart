// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_basic_dle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManageBasicDleDto _$ManageBasicDleDtoFromJson(Map<String, dynamic> json) {
  return _ManageBasicDleDto.fromJson(json);
}

/// @nodoc
mixin _$ManageBasicDleDto {
  String get id => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<ManageParameterDto> get parameters => throw _privateConstructorUsedError;
  List<ManageSelectableValueDto> get selectableValues =>
      throw _privateConstructorUsedError;
  List<ManageCharacterParameterDto> get characterParameters =>
      throw _privateConstructorUsedError;

  /// Serializes this ManageBasicDleDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManageBasicDleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageBasicDleDtoCopyWith<ManageBasicDleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageBasicDleDtoCopyWith<$Res> {
  factory $ManageBasicDleDtoCopyWith(
          ManageBasicDleDto value, $Res Function(ManageBasicDleDto) then) =
      _$ManageBasicDleDtoCopyWithImpl<$Res, ManageBasicDleDto>;
  @useResult
  $Res call(
      {String id,
      String dleId,
      DateTime updatedAt,
      DateTime createdAt,
      List<ManageParameterDto> parameters,
      List<ManageSelectableValueDto> selectableValues,
      List<ManageCharacterParameterDto> characterParameters});
}

/// @nodoc
class _$ManageBasicDleDtoCopyWithImpl<$Res, $Val extends ManageBasicDleDto>
    implements $ManageBasicDleDtoCopyWith<$Res> {
  _$ManageBasicDleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageBasicDleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dleId = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? parameters = null,
    Object? selectableValues = null,
    Object? characterParameters = null,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ManageParameterDto>,
      selectableValues: null == selectableValues
          ? _value.selectableValues
          : selectableValues // ignore: cast_nullable_to_non_nullable
              as List<ManageSelectableValueDto>,
      characterParameters: null == characterParameters
          ? _value.characterParameters
          : characterParameters // ignore: cast_nullable_to_non_nullable
              as List<ManageCharacterParameterDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageBasicDleDtoImplCopyWith<$Res>
    implements $ManageBasicDleDtoCopyWith<$Res> {
  factory _$$ManageBasicDleDtoImplCopyWith(_$ManageBasicDleDtoImpl value,
          $Res Function(_$ManageBasicDleDtoImpl) then) =
      __$$ManageBasicDleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String dleId,
      DateTime updatedAt,
      DateTime createdAt,
      List<ManageParameterDto> parameters,
      List<ManageSelectableValueDto> selectableValues,
      List<ManageCharacterParameterDto> characterParameters});
}

/// @nodoc
class __$$ManageBasicDleDtoImplCopyWithImpl<$Res>
    extends _$ManageBasicDleDtoCopyWithImpl<$Res, _$ManageBasicDleDtoImpl>
    implements _$$ManageBasicDleDtoImplCopyWith<$Res> {
  __$$ManageBasicDleDtoImplCopyWithImpl(_$ManageBasicDleDtoImpl _value,
      $Res Function(_$ManageBasicDleDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageBasicDleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dleId = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? parameters = null,
    Object? selectableValues = null,
    Object? characterParameters = null,
  }) {
    return _then(_$ManageBasicDleDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ManageParameterDto>,
      selectableValues: null == selectableValues
          ? _value._selectableValues
          : selectableValues // ignore: cast_nullable_to_non_nullable
              as List<ManageSelectableValueDto>,
      characterParameters: null == characterParameters
          ? _value._characterParameters
          : characterParameters // ignore: cast_nullable_to_non_nullable
              as List<ManageCharacterParameterDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManageBasicDleDtoImpl implements _ManageBasicDleDto {
  const _$ManageBasicDleDtoImpl(
      {required this.id,
      required this.dleId,
      required this.updatedAt,
      required this.createdAt,
      required final List<ManageParameterDto> parameters,
      required final List<ManageSelectableValueDto> selectableValues,
      required final List<ManageCharacterParameterDto> characterParameters})
      : _parameters = parameters,
        _selectableValues = selectableValues,
        _characterParameters = characterParameters;

  factory _$ManageBasicDleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManageBasicDleDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String dleId;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  final List<ManageParameterDto> _parameters;
  @override
  List<ManageParameterDto> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  final List<ManageSelectableValueDto> _selectableValues;
  @override
  List<ManageSelectableValueDto> get selectableValues {
    if (_selectableValues is EqualUnmodifiableListView)
      return _selectableValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectableValues);
  }

  final List<ManageCharacterParameterDto> _characterParameters;
  @override
  List<ManageCharacterParameterDto> get characterParameters {
    if (_characterParameters is EqualUnmodifiableListView)
      return _characterParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterParameters);
  }

  @override
  String toString() {
    return 'ManageBasicDleDto(id: $id, dleId: $dleId, updatedAt: $updatedAt, createdAt: $createdAt, parameters: $parameters, selectableValues: $selectableValues, characterParameters: $characterParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageBasicDleDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._selectableValues, _selectableValues) &&
            const DeepCollectionEquality()
                .equals(other._characterParameters, _characterParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dleId,
      updatedAt,
      createdAt,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_selectableValues),
      const DeepCollectionEquality().hash(_characterParameters));

  /// Create a copy of ManageBasicDleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageBasicDleDtoImplCopyWith<_$ManageBasicDleDtoImpl> get copyWith =>
      __$$ManageBasicDleDtoImplCopyWithImpl<_$ManageBasicDleDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManageBasicDleDtoImplToJson(
      this,
    );
  }
}

abstract class _ManageBasicDleDto implements ManageBasicDleDto {
  const factory _ManageBasicDleDto(
      {required final String id,
      required final String dleId,
      required final DateTime updatedAt,
      required final DateTime createdAt,
      required final List<ManageParameterDto> parameters,
      required final List<ManageSelectableValueDto> selectableValues,
      required final List<ManageCharacterParameterDto>
          characterParameters}) = _$ManageBasicDleDtoImpl;

  factory _ManageBasicDleDto.fromJson(Map<String, dynamic> json) =
      _$ManageBasicDleDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get dleId;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;
  @override
  List<ManageParameterDto> get parameters;
  @override
  List<ManageSelectableValueDto> get selectableValues;
  @override
  List<ManageCharacterParameterDto> get characterParameters;

  /// Create a copy of ManageBasicDleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageBasicDleDtoImplCopyWith<_$ManageBasicDleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
