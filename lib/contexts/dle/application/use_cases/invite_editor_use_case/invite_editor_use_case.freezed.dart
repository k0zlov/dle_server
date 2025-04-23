// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_editor_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InviteEditorParams _$InviteEditorParamsFromJson(Map<String, dynamic> json) {
  return _InviteEditorParams.fromJson(json);
}

/// @nodoc
mixin _$InviteEditorParams {
  String get inviterId => throw _privateConstructorUsedError;
  String get inviteeId => throw _privateConstructorUsedError;
  String get dleId => throw _privateConstructorUsedError;

  /// Serializes this InviteEditorParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InviteEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InviteEditorParamsCopyWith<InviteEditorParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteEditorParamsCopyWith<$Res> {
  factory $InviteEditorParamsCopyWith(
          InviteEditorParams value, $Res Function(InviteEditorParams) then) =
      _$InviteEditorParamsCopyWithImpl<$Res, InviteEditorParams>;
  @useResult
  $Res call({String inviterId, String inviteeId, String dleId});
}

/// @nodoc
class _$InviteEditorParamsCopyWithImpl<$Res, $Val extends InviteEditorParams>
    implements $InviteEditorParamsCopyWith<$Res> {
  _$InviteEditorParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviterId = null,
    Object? inviteeId = null,
    Object? dleId = null,
  }) {
    return _then(_value.copyWith(
      inviterId: null == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String,
      inviteeId: null == inviteeId
          ? _value.inviteeId
          : inviteeId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InviteEditorParamsImplCopyWith<$Res>
    implements $InviteEditorParamsCopyWith<$Res> {
  factory _$$InviteEditorParamsImplCopyWith(_$InviteEditorParamsImpl value,
          $Res Function(_$InviteEditorParamsImpl) then) =
      __$$InviteEditorParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inviterId, String inviteeId, String dleId});
}

/// @nodoc
class __$$InviteEditorParamsImplCopyWithImpl<$Res>
    extends _$InviteEditorParamsCopyWithImpl<$Res, _$InviteEditorParamsImpl>
    implements _$$InviteEditorParamsImplCopyWith<$Res> {
  __$$InviteEditorParamsImplCopyWithImpl(_$InviteEditorParamsImpl _value,
      $Res Function(_$InviteEditorParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviterId = null,
    Object? inviteeId = null,
    Object? dleId = null,
  }) {
    return _then(_$InviteEditorParamsImpl(
      inviterId: null == inviterId
          ? _value.inviterId
          : inviterId // ignore: cast_nullable_to_non_nullable
              as String,
      inviteeId: null == inviteeId
          ? _value.inviteeId
          : inviteeId // ignore: cast_nullable_to_non_nullable
              as String,
      dleId: null == dleId
          ? _value.dleId
          : dleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InviteEditorParamsImpl implements _InviteEditorParams {
  const _$InviteEditorParamsImpl(
      {required this.inviterId, required this.inviteeId, required this.dleId});

  factory _$InviteEditorParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InviteEditorParamsImplFromJson(json);

  @override
  final String inviterId;
  @override
  final String inviteeId;
  @override
  final String dleId;

  @override
  String toString() {
    return 'InviteEditorParams(inviterId: $inviterId, inviteeId: $inviteeId, dleId: $dleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteEditorParamsImpl &&
            (identical(other.inviterId, inviterId) ||
                other.inviterId == inviterId) &&
            (identical(other.inviteeId, inviteeId) ||
                other.inviteeId == inviteeId) &&
            (identical(other.dleId, dleId) || other.dleId == dleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inviterId, inviteeId, dleId);

  /// Create a copy of InviteEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteEditorParamsImplCopyWith<_$InviteEditorParamsImpl> get copyWith =>
      __$$InviteEditorParamsImplCopyWithImpl<_$InviteEditorParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InviteEditorParamsImplToJson(
      this,
    );
  }
}

abstract class _InviteEditorParams implements InviteEditorParams {
  const factory _InviteEditorParams(
      {required final String inviterId,
      required final String inviteeId,
      required final String dleId}) = _$InviteEditorParamsImpl;

  factory _InviteEditorParams.fromJson(Map<String, dynamic> json) =
      _$InviteEditorParamsImpl.fromJson;

  @override
  String get inviterId;
  @override
  String get inviteeId;
  @override
  String get dleId;

  /// Create a copy of InviteEditorParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteEditorParamsImplCopyWith<_$InviteEditorParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
