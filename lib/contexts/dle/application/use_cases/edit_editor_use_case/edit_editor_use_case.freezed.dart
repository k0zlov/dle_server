// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_editor_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditEditorParams _$EditEditorParamsFromJson(Map<String, dynamic> json) {
  return _EditEditorParams.fromJson(json);
}

/// @nodoc
mixin _$EditEditorParams {
  String get dleId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get editorUserId => throw _privateConstructorUsedError;
  DleEditorRole get role => throw _privateConstructorUsedError;

  /// Serializes this EditEditorParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditEditorParamsCopyWith<EditEditorParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEditorParamsCopyWith<$Res> {
  factory $EditEditorParamsCopyWith(
          EditEditorParams value, $Res Function(EditEditorParams) then) =
      _$EditEditorParamsCopyWithImpl<$Res, EditEditorParams>;
  @useResult
  $Res call(
      {String dleId, String userId, String editorUserId, DleEditorRole role});
}

/// @nodoc
class _$EditEditorParamsCopyWithImpl<$Res, $Val extends EditEditorParams>
    implements $EditEditorParamsCopyWith<$Res> {
  _$EditEditorParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? userId = null,
    Object? editorUserId = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      editorUserId: null == editorUserId
          ? _value.editorUserId
          : editorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as DleEditorRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditEditorParamsImplCopyWith<$Res>
    implements $EditEditorParamsCopyWith<$Res> {
  factory _$$EditEditorParamsImplCopyWith(_$EditEditorParamsImpl value,
          $Res Function(_$EditEditorParamsImpl) then) =
      __$$EditEditorParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dleId, String userId, String editorUserId, DleEditorRole role});
}

/// @nodoc
class __$$EditEditorParamsImplCopyWithImpl<$Res>
    extends _$EditEditorParamsCopyWithImpl<$Res, _$EditEditorParamsImpl>
    implements _$$EditEditorParamsImplCopyWith<$Res> {
  __$$EditEditorParamsImplCopyWithImpl(_$EditEditorParamsImpl _value,
      $Res Function(_$EditEditorParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? userId = null,
    Object? editorUserId = null,
    Object? role = null,
  }) {
    return _then(_$EditEditorParamsImpl(
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      editorUserId: null == editorUserId
          ? _value.editorUserId
          : editorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as DleEditorRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditEditorParamsImpl implements _EditEditorParams {
  const _$EditEditorParamsImpl(
      {required this.dleId,
      required this.userId,
      required this.editorUserId,
      required this.role});

  factory _$EditEditorParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditEditorParamsImplFromJson(json);

  @override
  final String dleId;
  @override
  final String userId;
  @override
  final String editorUserId;
  @override
  final DleEditorRole role;

  @override
  String toString() {
    return 'EditEditorParams(dleId: $dleId, userId: $userId, editorUserId: $editorUserId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEditorParamsImpl &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.editorUserId, editorUserId) ||
                other.editorUserId == editorUserId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dleId, userId, editorUserId, role);

  /// Create a copy of EditEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEditorParamsImplCopyWith<_$EditEditorParamsImpl> get copyWith =>
      __$$EditEditorParamsImplCopyWithImpl<_$EditEditorParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditEditorParamsImplToJson(
      this,
    );
  }
}

abstract class _EditEditorParams implements EditEditorParams {
  const factory _EditEditorParams(
      {required final String dleId,
      required final String userId,
      required final String editorUserId,
      required final DleEditorRole role}) = _$EditEditorParamsImpl;

  factory _EditEditorParams.fromJson(Map<String, dynamic> json) =
      _$EditEditorParamsImpl.fromJson;

  @override
  String get dleId;
  @override
  String get userId;
  @override
  String get editorUserId;
  @override
  DleEditorRole get role;

  /// Create a copy of EditEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEditorParamsImplCopyWith<_$EditEditorParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
