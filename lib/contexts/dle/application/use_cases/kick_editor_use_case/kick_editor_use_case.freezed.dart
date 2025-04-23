// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kick_editor_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KickEditorParams _$KickEditorParamsFromJson(Map<String, dynamic> json) {
  return _KickEditorParams.fromJson(json);
}

/// @nodoc
mixin _$KickEditorParams {
  String get dleId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get editorUserId => throw _privateConstructorUsedError;

  /// Serializes this KickEditorParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KickEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KickEditorParamsCopyWith<KickEditorParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KickEditorParamsCopyWith<$Res> {
  factory $KickEditorParamsCopyWith(
          KickEditorParams value, $Res Function(KickEditorParams) then) =
      _$KickEditorParamsCopyWithImpl<$Res, KickEditorParams>;
  @useResult
  $Res call({String dleId, String userId, String editorUserId});
}

/// @nodoc
class _$KickEditorParamsCopyWithImpl<$Res, $Val extends KickEditorParams>
    implements $KickEditorParamsCopyWith<$Res> {
  _$KickEditorParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KickEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? userId = null,
    Object? editorUserId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KickEditorParamsImplCopyWith<$Res>
    implements $KickEditorParamsCopyWith<$Res> {
  factory _$$KickEditorParamsImplCopyWith(_$KickEditorParamsImpl value,
          $Res Function(_$KickEditorParamsImpl) then) =
      __$$KickEditorParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dleId, String userId, String editorUserId});
}

/// @nodoc
class __$$KickEditorParamsImplCopyWithImpl<$Res>
    extends _$KickEditorParamsCopyWithImpl<$Res, _$KickEditorParamsImpl>
    implements _$$KickEditorParamsImplCopyWith<$Res> {
  __$$KickEditorParamsImplCopyWithImpl(_$KickEditorParamsImpl _value,
      $Res Function(_$KickEditorParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of KickEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dleId = null,
    Object? userId = null,
    Object? editorUserId = null,
  }) {
    return _then(_$KickEditorParamsImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KickEditorParamsImpl implements _KickEditorParams {
  const _$KickEditorParamsImpl(
      {required this.dleId, required this.userId, required this.editorUserId});

  factory _$KickEditorParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$KickEditorParamsImplFromJson(json);

  @override
  final String dleId;
  @override
  final String userId;
  @override
  final String editorUserId;

  @override
  String toString() {
    return 'KickEditorParams(dleId: $dleId, userId: $userId, editorUserId: $editorUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KickEditorParamsImpl &&
            (identical(other.dleId, dleId) || other.dleId == dleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.editorUserId, editorUserId) ||
                other.editorUserId == editorUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dleId, userId, editorUserId);

  /// Create a copy of KickEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KickEditorParamsImplCopyWith<_$KickEditorParamsImpl> get copyWith =>
      __$$KickEditorParamsImplCopyWithImpl<_$KickEditorParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KickEditorParamsImplToJson(
      this,
    );
  }
}

abstract class _KickEditorParams implements KickEditorParams {
  const factory _KickEditorParams(
      {required final String dleId,
      required final String userId,
      required final String editorUserId}) = _$KickEditorParamsImpl;

  factory _KickEditorParams.fromJson(Map<String, dynamic> json) =
      _$KickEditorParamsImpl.fromJson;

  @override
  String get dleId;
  @override
  String get userId;
  @override
  String get editorUserId;

  /// Create a copy of KickEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KickEditorParamsImplCopyWith<_$KickEditorParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
