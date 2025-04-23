// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dle_invitation.dart';

class DleInvitationStatusMapper extends EnumMapper<DleInvitationStatus> {
  DleInvitationStatusMapper._();

  static DleInvitationStatusMapper? _instance;
  static DleInvitationStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleInvitationStatusMapper._());
    }
    return _instance!;
  }

  static DleInvitationStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DleInvitationStatus decode(dynamic value) {
    switch (value) {
      case 'accepted':
        return DleInvitationStatus.accepted;
      case 'pending':
        return DleInvitationStatus.pending;
      case 'canceled':
        return DleInvitationStatus.canceled;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DleInvitationStatus self) {
    switch (self) {
      case DleInvitationStatus.accepted:
        return 'accepted';
      case DleInvitationStatus.pending:
        return 'pending';
      case DleInvitationStatus.canceled:
        return 'canceled';
    }
  }
}

extension DleInvitationStatusMapperExtension on DleInvitationStatus {
  String toValue() {
    DleInvitationStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DleInvitationStatus>(this) as String;
  }
}

class DleInvitationMapper extends ClassMapperBase<DleInvitation> {
  DleInvitationMapper._();

  static DleInvitationMapper? _instance;
  static DleInvitationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleInvitationMapper._());
      DleInvitationStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DleInvitation';

  static String _$id(DleInvitation v) => v.id;
  static const Field<DleInvitation, String> _f$id =
      Field('id', _$id, opt: true);
  static String _$dleId(DleInvitation v) => v.dleId;
  static const Field<DleInvitation, String> _f$dleId = Field('dleId', _$dleId);
  static String _$inviterId(DleInvitation v) => v.inviterId;
  static const Field<DleInvitation, String> _f$inviterId =
      Field('inviterId', _$inviterId);
  static String _$inviteeId(DleInvitation v) => v.inviteeId;
  static const Field<DleInvitation, String> _f$inviteeId =
      Field('inviteeId', _$inviteeId);
  static DleInvitationStatus _$status(DleInvitation v) => v.status;
  static const Field<DleInvitation, DleInvitationStatus> _f$status =
      Field('status', _$status);
  static DateTime _$updatedAt(DleInvitation v) => v.updatedAt;
  static const Field<DleInvitation, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(DleInvitation v) => v.createdAt;
  static const Field<DleInvitation, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<DleInvitation> fields = const {
    #id: _f$id,
    #dleId: _f$dleId,
    #inviterId: _f$inviterId,
    #inviteeId: _f$inviteeId,
    #status: _f$status,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static DleInvitation _instantiate(DecodingData data) {
    return DleInvitation(
        id: data.dec(_f$id),
        dleId: data.dec(_f$dleId),
        inviterId: data.dec(_f$inviterId),
        inviteeId: data.dec(_f$inviteeId),
        status: data.dec(_f$status),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static DleInvitation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DleInvitation>(map);
  }

  static DleInvitation fromJson(String json) {
    return ensureInitialized().decodeJson<DleInvitation>(json);
  }
}

mixin DleInvitationMappable {
  String toJson() {
    return DleInvitationMapper.ensureInitialized()
        .encodeJson<DleInvitation>(this as DleInvitation);
  }

  Map<String, dynamic> toMap() {
    return DleInvitationMapper.ensureInitialized()
        .encodeMap<DleInvitation>(this as DleInvitation);
  }

  DleInvitationCopyWith<DleInvitation, DleInvitation, DleInvitation>
      get copyWith => _DleInvitationCopyWithImpl(
          this as DleInvitation, $identity, $identity);
  @override
  String toString() {
    return DleInvitationMapper.ensureInitialized()
        .stringifyValue(this as DleInvitation);
  }

  @override
  bool operator ==(Object other) {
    return DleInvitationMapper.ensureInitialized()
        .equalsValue(this as DleInvitation, other);
  }

  @override
  int get hashCode {
    return DleInvitationMapper.ensureInitialized()
        .hashValue(this as DleInvitation);
  }
}

extension DleInvitationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DleInvitation, $Out> {
  DleInvitationCopyWith<$R, DleInvitation, $Out> get $asDleInvitation =>
      $base.as((v, t, t2) => _DleInvitationCopyWithImpl(v, t, t2));
}

abstract class DleInvitationCopyWith<$R, $In extends DleInvitation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? dleId,
      String? inviterId,
      String? inviteeId,
      DleInvitationStatus? status,
      DateTime? updatedAt,
      DateTime? createdAt});
  DleInvitationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DleInvitationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DleInvitation, $Out>
    implements DleInvitationCopyWith<$R, DleInvitation, $Out> {
  _DleInvitationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DleInvitation> $mapper =
      DleInvitationMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? dleId,
          String? inviterId,
          String? inviteeId,
          DleInvitationStatus? status,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (dleId != null) #dleId: dleId,
        if (inviterId != null) #inviterId: inviterId,
        if (inviteeId != null) #inviteeId: inviteeId,
        if (status != null) #status: status,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  DleInvitation $make(CopyWithData data) => DleInvitation(
      id: data.get(#id, or: $value.id),
      dleId: data.get(#dleId, or: $value.dleId),
      inviterId: data.get(#inviterId, or: $value.inviterId),
      inviteeId: data.get(#inviteeId, or: $value.inviteeId),
      status: data.get(#status, or: $value.status),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  DleInvitationCopyWith<$R2, DleInvitation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DleInvitationCopyWithImpl($value, $cast, t);
}
