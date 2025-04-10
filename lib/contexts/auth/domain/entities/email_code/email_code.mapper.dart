// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'email_code.dart';

class EmailCodeMapper extends ClassMapperBase<EmailCode> {
  EmailCodeMapper._();

  static EmailCodeMapper? _instance;
  static EmailCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmailCodeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EmailCode';

  static String _$id(EmailCode v) => v.id;
  static const Field<EmailCode, String> _f$id = Field('id', _$id, opt: true);
  static String _$userId(EmailCode v) => v.userId;
  static const Field<EmailCode, String> _f$userId = Field('userId', _$userId);
  static String _$code(EmailCode v) => v.code;
  static const Field<EmailCode, String> _f$code = Field('code', _$code);
  static bool _$isSuccess(EmailCode v) => v.isSuccess;
  static const Field<EmailCode, bool> _f$isSuccess =
      Field('isSuccess', _$isSuccess);
  static DateTime _$expiresAt(EmailCode v) => v.expiresAt;
  static const Field<EmailCode, DateTime> _f$expiresAt =
      Field('expiresAt', _$expiresAt);
  static DateTime _$updatedAt(EmailCode v) => v.updatedAt;
  static const Field<EmailCode, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$createdAt(EmailCode v) => v.createdAt;
  static const Field<EmailCode, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<EmailCode> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #code: _f$code,
    #isSuccess: _f$isSuccess,
    #expiresAt: _f$expiresAt,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
  };

  static EmailCode _instantiate(DecodingData data) {
    return EmailCode(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        code: data.dec(_f$code),
        isSuccess: data.dec(_f$isSuccess),
        expiresAt: data.dec(_f$expiresAt),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static EmailCode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmailCode>(map);
  }

  static EmailCode fromJson(String json) {
    return ensureInitialized().decodeJson<EmailCode>(json);
  }
}

mixin EmailCodeMappable {
  String toJson() {
    return EmailCodeMapper.ensureInitialized()
        .encodeJson<EmailCode>(this as EmailCode);
  }

  Map<String, dynamic> toMap() {
    return EmailCodeMapper.ensureInitialized()
        .encodeMap<EmailCode>(this as EmailCode);
  }

  EmailCodeCopyWith<EmailCode, EmailCode, EmailCode> get copyWith =>
      _EmailCodeCopyWithImpl(this as EmailCode, $identity, $identity);
  @override
  String toString() {
    return EmailCodeMapper.ensureInitialized()
        .stringifyValue(this as EmailCode);
  }

  @override
  bool operator ==(Object other) {
    return EmailCodeMapper.ensureInitialized()
        .equalsValue(this as EmailCode, other);
  }

  @override
  int get hashCode {
    return EmailCodeMapper.ensureInitialized().hashValue(this as EmailCode);
  }
}

extension EmailCodeValueCopy<$R, $Out> on ObjectCopyWith<$R, EmailCode, $Out> {
  EmailCodeCopyWith<$R, EmailCode, $Out> get $asEmailCode =>
      $base.as((v, t, t2) => _EmailCodeCopyWithImpl(v, t, t2));
}

abstract class EmailCodeCopyWith<$R, $In extends EmailCode, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? userId,
      String? code,
      bool? isSuccess,
      DateTime? expiresAt,
      DateTime? updatedAt,
      DateTime? createdAt});
  EmailCodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EmailCodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmailCode, $Out>
    implements EmailCodeCopyWith<$R, EmailCode, $Out> {
  _EmailCodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmailCode> $mapper =
      EmailCodeMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          String? userId,
          String? code,
          bool? isSuccess,
          DateTime? expiresAt,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (userId != null) #userId: userId,
        if (code != null) #code: code,
        if (isSuccess != null) #isSuccess: isSuccess,
        if (expiresAt != null) #expiresAt: expiresAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  EmailCode $make(CopyWithData data) => EmailCode(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      code: data.get(#code, or: $value.code),
      isSuccess: data.get(#isSuccess, or: $value.isSuccess),
      expiresAt: data.get(#expiresAt, or: $value.expiresAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  EmailCodeCopyWith<$R2, EmailCode, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EmailCodeCopyWithImpl($value, $cast, t);
}
