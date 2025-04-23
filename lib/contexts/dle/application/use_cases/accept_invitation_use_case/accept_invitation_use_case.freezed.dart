// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_invitation_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptInvitationParams _$AcceptInvitationParamsFromJson(
    Map<String, dynamic> json) {
  return _AcceptInvitationParams.fromJson(json);
}

/// @nodoc
mixin _$AcceptInvitationParams {
  String get userId => throw _privateConstructorUsedError;
  String get invitationId => throw _privateConstructorUsedError;

  /// Serializes this AcceptInvitationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptInvitationParamsCopyWith<AcceptInvitationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptInvitationParamsCopyWith<$Res> {
  factory $AcceptInvitationParamsCopyWith(AcceptInvitationParams value,
          $Res Function(AcceptInvitationParams) then) =
      _$AcceptInvitationParamsCopyWithImpl<$Res, AcceptInvitationParams>;
  @useResult
  $Res call({String userId, String invitationId});
}

/// @nodoc
class _$AcceptInvitationParamsCopyWithImpl<$Res,
        $Val extends AcceptInvitationParams>
    implements $AcceptInvitationParamsCopyWith<$Res> {
  _$AcceptInvitationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? invitationId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      invitationId: null == invitationId
          ? _value.invitationId
          : invitationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptInvitationParamsImplCopyWith<$Res>
    implements $AcceptInvitationParamsCopyWith<$Res> {
  factory _$$AcceptInvitationParamsImplCopyWith(
          _$AcceptInvitationParamsImpl value,
          $Res Function(_$AcceptInvitationParamsImpl) then) =
      __$$AcceptInvitationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String invitationId});
}

/// @nodoc
class __$$AcceptInvitationParamsImplCopyWithImpl<$Res>
    extends _$AcceptInvitationParamsCopyWithImpl<$Res,
        _$AcceptInvitationParamsImpl>
    implements _$$AcceptInvitationParamsImplCopyWith<$Res> {
  __$$AcceptInvitationParamsImplCopyWithImpl(
      _$AcceptInvitationParamsImpl _value,
      $Res Function(_$AcceptInvitationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? invitationId = null,
  }) {
    return _then(_$AcceptInvitationParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      invitationId: null == invitationId
          ? _value.invitationId
          : invitationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptInvitationParamsImpl implements _AcceptInvitationParams {
  const _$AcceptInvitationParamsImpl(
      {required this.userId, required this.invitationId});

  factory _$AcceptInvitationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptInvitationParamsImplFromJson(json);

  @override
  final String userId;
  @override
  final String invitationId;

  @override
  String toString() {
    return 'AcceptInvitationParams(userId: $userId, invitationId: $invitationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptInvitationParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.invitationId, invitationId) ||
                other.invitationId == invitationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, invitationId);

  /// Create a copy of AcceptInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptInvitationParamsImplCopyWith<_$AcceptInvitationParamsImpl>
      get copyWith => __$$AcceptInvitationParamsImplCopyWithImpl<
          _$AcceptInvitationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptInvitationParamsImplToJson(
      this,
    );
  }
}

abstract class _AcceptInvitationParams implements AcceptInvitationParams {
  const factory _AcceptInvitationParams(
      {required final String userId,
      required final String invitationId}) = _$AcceptInvitationParamsImpl;

  factory _AcceptInvitationParams.fromJson(Map<String, dynamic> json) =
      _$AcceptInvitationParamsImpl.fromJson;

  @override
  String get userId;
  @override
  String get invitationId;

  /// Create a copy of AcceptInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptInvitationParamsImplCopyWith<_$AcceptInvitationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
