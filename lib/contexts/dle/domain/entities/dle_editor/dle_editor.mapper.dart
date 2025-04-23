// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dle_editor.dart';

class DleEditorRoleMapper extends EnumMapper<DleEditorRole> {
  DleEditorRoleMapper._();

  static DleEditorRoleMapper? _instance;
  static DleEditorRoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleEditorRoleMapper._());
    }
    return _instance!;
  }

  static DleEditorRole fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DleEditorRole decode(dynamic value) {
    switch (value) {
      case 'editor':
        return DleEditorRole.editor;
      case 'admin':
        return DleEditorRole.admin;
      case 'owner':
        return DleEditorRole.owner;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DleEditorRole self) {
    switch (self) {
      case DleEditorRole.editor:
        return 'editor';
      case DleEditorRole.admin:
        return 'admin';
      case DleEditorRole.owner:
        return 'owner';
    }
  }
}

extension DleEditorRoleMapperExtension on DleEditorRole {
  String toValue() {
    DleEditorRoleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DleEditorRole>(this) as String;
  }
}

class DleEditorMapper extends ClassMapperBase<DleEditor> {
  DleEditorMapper._();

  static DleEditorMapper? _instance;
  static DleEditorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DleEditorMapper._());
      DleEditorRoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DleEditor';

  static String _$id(DleEditor v) => v.id;
  static const Field<DleEditor, String> _f$id = Field('id', _$id, opt: true);
  static String _$userId(DleEditor v) => v.userId;
  static const Field<DleEditor, String> _f$userId = Field('userId', _$userId);
  static String _$dleId(DleEditor v) => v.dleId;
  static const Field<DleEditor, String> _f$dleId = Field('dleId', _$dleId);
  static DleEditorRole _$role(DleEditor v) => v.role;
  static const Field<DleEditor, DleEditorRole> _f$role = Field('role', _$role);
  static DateTime _$updatedAt(DleEditor v) => v.updatedAt;
  static const Field<DleEditor, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(DleEditor v) => v.createdAt;
  static const Field<DleEditor, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<DleEditor> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #dleId: _f$dleId,
    #role: _f$role,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static DleEditor _instantiate(DecodingData data) {
    return DleEditor(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        dleId: data.dec(_f$dleId),
        role: data.dec(_f$role),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static DleEditor fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DleEditor>(map);
  }

  static DleEditor fromJson(String json) {
    return ensureInitialized().decodeJson<DleEditor>(json);
  }
}

mixin DleEditorMappable {
  String toJson() {
    return DleEditorMapper.ensureInitialized()
        .encodeJson<DleEditor>(this as DleEditor);
  }

  Map<String, dynamic> toMap() {
    return DleEditorMapper.ensureInitialized()
        .encodeMap<DleEditor>(this as DleEditor);
  }

  DleEditorCopyWith<DleEditor, DleEditor, DleEditor> get copyWith =>
      _DleEditorCopyWithImpl(this as DleEditor, $identity, $identity);
  @override
  String toString() {
    return DleEditorMapper.ensureInitialized()
        .stringifyValue(this as DleEditor);
  }

  @override
  bool operator ==(Object other) {
    return DleEditorMapper.ensureInitialized()
        .equalsValue(this as DleEditor, other);
  }

  @override
  int get hashCode {
    return DleEditorMapper.ensureInitialized().hashValue(this as DleEditor);
  }
}

extension DleEditorValueCopy<$R, $Out> on ObjectCopyWith<$R, DleEditor, $Out> {
  DleEditorCopyWith<$R, DleEditor, $Out> get $asDleEditor =>
      $base.as((v, t, t2) => _DleEditorCopyWithImpl(v, t, t2));
}

abstract class DleEditorCopyWith<$R, $In extends DleEditor, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? userId,
      String? dleId,
      DleEditorRole? role,
      DateTime? updatedAt,
      DateTime? createdAt});
  DleEditorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DleEditorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DleEditor, $Out>
    implements DleEditorCopyWith<$R, DleEditor, $Out> {
  _DleEditorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DleEditor> $mapper =
      DleEditorMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? userId,
          String? dleId,
          DleEditorRole? role,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (userId != null) #userId: userId,
        if (dleId != null) #dleId: dleId,
        if (role != null) #role: role,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  DleEditor $make(CopyWithData data) => DleEditor(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      dleId: data.get(#dleId, or: $value.dleId),
      role: data.get(#role, or: $value.role),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  DleEditorCopyWith<$R2, DleEditor, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DleEditorCopyWithImpl($value, $cast, t);
}
