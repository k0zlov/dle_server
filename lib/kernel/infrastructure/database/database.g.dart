// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($UsersTable.$converterid);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _passwordHashMeta =
      const VerificationMeta('passwordHash');
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
      'password_hash', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailVerifiedMeta =
      const VerificationMeta('emailVerified');
  @override
  late final GeneratedColumn<bool> emailVerified = GeneratedColumn<bool>(
      'email_verified', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultValue: const Constant(false));
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($UsersTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($UsersTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, email, passwordHash, emailVerified, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password_hash')) {
      context.handle(
          _passwordHashMeta,
          passwordHash.isAcceptableOrUnknown(
              data['password_hash']!, _passwordHashMeta));
    } else if (isInserting) {
      context.missing(_passwordHashMeta);
    }
    if (data.containsKey('email_verified')) {
      context.handle(
          _emailVerifiedMeta,
          emailVerified.isAcceptableOrUnknown(
              data['email_verified']!, _emailVerifiedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: $UsersTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      passwordHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password_hash'])!,
      updatedAt: $UsersTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $UsersTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
      emailVerified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}email_verified'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> email;
  final Value<String> passwordHash;
  final Value<bool> emailVerified;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.emailVerified = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String passwordHash,
    this.emailVerified = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : email = Value(email),
        passwordHash = Value(passwordHash);
  static Insertable<User> custom({
    Expression<UuidValue>? id,
    Expression<String>? email,
    Expression<String>? passwordHash,
    Expression<bool>? emailVerified,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (emailVerified != null) 'email_verified': emailVerified,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<String>? email,
      Value<String>? passwordHash,
      Value<bool>? emailVerified,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      passwordHash: passwordHash ?? this.passwordHash,
      emailVerified: emailVerified ?? this.emailVerified,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(
          $UsersTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (emailVerified.present) {
      map['email_verified'] = Variable<bool>(emailVerified.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $UsersTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $UsersTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('emailVerified: $emailVerified, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AuthSessionsTable extends AuthSessions
    with TableInfo<$AuthSessionsTable, AuthSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AuthSessionsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($AuthSessionsTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> userId =
      GeneratedColumn<UuidValue>('user_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($AuthSessionsTable.$converteruserId);
  static const VerificationMeta _refreshTokenMeta =
      const VerificationMeta('refreshToken');
  @override
  late final GeneratedColumn<String> refreshToken = GeneratedColumn<String>(
      'refresh_token', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _ipMeta = const VerificationMeta('ip');
  @override
  late final GeneratedColumn<String> ip = GeneratedColumn<String>(
      'ip', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceInfoMeta =
      const VerificationMeta('deviceInfo');
  @override
  late final GeneratedColumn<String> deviceInfo = GeneratedColumn<String>(
      'device_info', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> expiresAt =
      GeneratedColumn<PgDateTime>('expires_at', aliasedName, false,
              type: dialectAwareTimestamp, requiredDuringInsert: true)
          .withConverter<DateTime>($AuthSessionsTable.$converterexpiresAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($AuthSessionsTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($AuthSessionsTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        refreshToken,
        ip,
        deviceInfo,
        expiresAt,
        updatedAt,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'auth_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<AuthSession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('refresh_token')) {
      context.handle(
          _refreshTokenMeta,
          refreshToken.isAcceptableOrUnknown(
              data['refresh_token']!, _refreshTokenMeta));
    } else if (isInserting) {
      context.missing(_refreshTokenMeta);
    }
    if (data.containsKey('ip')) {
      context.handle(_ipMeta, ip.isAcceptableOrUnknown(data['ip']!, _ipMeta));
    } else if (isInserting) {
      context.missing(_ipMeta);
    }
    if (data.containsKey('device_info')) {
      context.handle(
          _deviceInfoMeta,
          deviceInfo.isAcceptableOrUnknown(
              data['device_info']!, _deviceInfoMeta));
    } else if (isInserting) {
      context.missing(_deviceInfoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AuthSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AuthSession(
      id: $AuthSessionsTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      userId: $AuthSessionsTable.$converteruserId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}user_id'])!),
      ip: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ip'])!,
      refreshToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refresh_token'])!,
      deviceInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_info'])!,
      expiresAt: $AuthSessionsTable.$converterexpiresAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}expires_at'])!),
      updatedAt: $AuthSessionsTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $AuthSessionsTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $AuthSessionsTable createAlias(String alias) {
    return $AuthSessionsTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruserId =
      const UuidValueToStringConverter();
  static TypeConverter<DateTime, PgDateTime> $converterexpiresAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class AuthSessionsCompanion extends UpdateCompanion<AuthSession> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> refreshToken;
  final Value<String> ip;
  final Value<String> deviceInfo;
  final Value<DateTime> expiresAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const AuthSessionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.ip = const Value.absent(),
    this.deviceInfo = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AuthSessionsCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String refreshToken,
    required String ip,
    required String deviceInfo,
    required DateTime expiresAt,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        refreshToken = Value(refreshToken),
        ip = Value(ip),
        deviceInfo = Value(deviceInfo),
        expiresAt = Value(expiresAt);
  static Insertable<AuthSession> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? userId,
    Expression<String>? refreshToken,
    Expression<String>? ip,
    Expression<String>? deviceInfo,
    Expression<PgDateTime>? expiresAt,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (ip != null) 'ip': ip,
      if (deviceInfo != null) 'device_info': deviceInfo,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AuthSessionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? refreshToken,
      Value<String>? ip,
      Value<String>? deviceInfo,
      Value<DateTime>? expiresAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return AuthSessionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      refreshToken: refreshToken ?? this.refreshToken,
      ip: ip ?? this.ip,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      expiresAt: expiresAt ?? this.expiresAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(
          $AuthSessionsTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (userId.present) {
      map['user_id'] = Variable<UuidValue>(
          $AuthSessionsTable.$converteruserId.toSql(userId.value),
          PgTypes.uuid);
    }
    if (refreshToken.present) {
      map['refresh_token'] = Variable<String>(refreshToken.value);
    }
    if (ip.present) {
      map['ip'] = Variable<String>(ip.value);
    }
    if (deviceInfo.present) {
      map['device_info'] = Variable<String>(deviceInfo.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<PgDateTime>(
          $AuthSessionsTable.$converterexpiresAt.toSql(expiresAt.value),
          dialectAwareTimestamp);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $AuthSessionsTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $AuthSessionsTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuthSessionsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('ip: $ip, ')
          ..write('deviceInfo: $deviceInfo, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EmailVerificationCodesTable extends EmailVerificationCodes
    with TableInfo<$EmailVerificationCodesTable, EmailCode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmailVerificationCodesTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($EmailVerificationCodesTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> userId =
      GeneratedColumn<UuidValue>('user_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($EmailVerificationCodesTable.$converteruserId);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isSuccessMeta =
      const VerificationMeta('isSuccess');
  @override
  late final GeneratedColumn<bool> isSuccess = GeneratedColumn<bool>(
      'is_success', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultValue: const Constant(false));
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> expiresAt =
      GeneratedColumn<PgDateTime>('expires_at', aliasedName, false,
              type: dialectAwareTimestamp, requiredDuringInsert: true)
          .withConverter<DateTime>(
              $EmailVerificationCodesTable.$converterexpiresAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>(
              $EmailVerificationCodesTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>(
              $EmailVerificationCodesTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, code, isSuccess, expiresAt, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'email_verification_codes';
  @override
  VerificationContext validateIntegrity(Insertable<EmailCode> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('is_success')) {
      context.handle(_isSuccessMeta,
          isSuccess.isAcceptableOrUnknown(data['is_success']!, _isSuccessMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmailCode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmailCode(
      id: $EmailVerificationCodesTable.$converterid.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      userId: $EmailVerificationCodesTable.$converteruserId.fromSql(
          attachedDatabase.typeMapping
              .read(PgTypes.uuid, data['${effectivePrefix}user_id'])!),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      isSuccess: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_success'])!,
      expiresAt: $EmailVerificationCodesTable.$converterexpiresAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}expires_at'])!),
      updatedAt: $EmailVerificationCodesTable.$converterupdatedAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $EmailVerificationCodesTable.$convertercreatedAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $EmailVerificationCodesTable createAlias(String alias) {
    return $EmailVerificationCodesTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruserId =
      const UuidValueToStringConverter();
  static TypeConverter<DateTime, PgDateTime> $converterexpiresAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class EmailVerificationCodesCompanion extends UpdateCompanion<EmailCode> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> code;
  final Value<bool> isSuccess;
  final Value<DateTime> expiresAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const EmailVerificationCodesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.code = const Value.absent(),
    this.isSuccess = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EmailVerificationCodesCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String code,
    this.isSuccess = const Value.absent(),
    required DateTime expiresAt,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        code = Value(code),
        expiresAt = Value(expiresAt);
  static Insertable<EmailCode> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? userId,
    Expression<String>? code,
    Expression<bool>? isSuccess,
    Expression<PgDateTime>? expiresAt,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (code != null) 'code': code,
      if (isSuccess != null) 'is_success': isSuccess,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EmailVerificationCodesCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? code,
      Value<bool>? isSuccess,
      Value<DateTime>? expiresAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return EmailVerificationCodesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      code: code ?? this.code,
      isSuccess: isSuccess ?? this.isSuccess,
      expiresAt: expiresAt ?? this.expiresAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(
          $EmailVerificationCodesTable.$converterid.toSql(id.value),
          PgTypes.uuid);
    }
    if (userId.present) {
      map['user_id'] = Variable<UuidValue>(
          $EmailVerificationCodesTable.$converteruserId.toSql(userId.value),
          PgTypes.uuid);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (isSuccess.present) {
      map['is_success'] = Variable<bool>(isSuccess.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<PgDateTime>(
          $EmailVerificationCodesTable.$converterexpiresAt
              .toSql(expiresAt.value),
          dialectAwareTimestamp);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $EmailVerificationCodesTable.$converterupdatedAt
              .toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $EmailVerificationCodesTable.$convertercreatedAt
              .toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmailVerificationCodesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('code: $code, ')
          ..write('isSuccess: $isSuccess, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PasswordResetTokensTable extends PasswordResetTokens
    with TableInfo<$PasswordResetTokensTable, PasswordResetToken> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PasswordResetTokensTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($PasswordResetTokensTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> userId =
      GeneratedColumn<UuidValue>('user_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($PasswordResetTokensTable.$converteruserId);
  static const VerificationMeta _isUsedMeta = const VerificationMeta('isUsed');
  @override
  late final GeneratedColumn<bool> isUsed = GeneratedColumn<bool>(
      'is_used', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultValue: const Constant(false));
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> expiresAt =
      GeneratedColumn<PgDateTime>('expires_at', aliasedName, false,
              type: dialectAwareTimestamp, requiredDuringInsert: true)
          .withConverter<DateTime>(
              $PasswordResetTokensTable.$converterexpiresAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>(
              $PasswordResetTokensTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>(
              $PasswordResetTokensTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, isUsed, expiresAt, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'password_reset_tokens';
  @override
  VerificationContext validateIntegrity(Insertable<PasswordResetToken> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_used')) {
      context.handle(_isUsedMeta,
          isUsed.isAcceptableOrUnknown(data['is_used']!, _isUsedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PasswordResetToken map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PasswordResetToken(
      id: $PasswordResetTokensTable.$converterid.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      userId: $PasswordResetTokensTable.$converteruserId.fromSql(
          attachedDatabase.typeMapping
              .read(PgTypes.uuid, data['${effectivePrefix}user_id'])!),
      expiresAt: $PasswordResetTokensTable.$converterexpiresAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}expires_at'])!),
      updatedAt: $PasswordResetTokensTable.$converterupdatedAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $PasswordResetTokensTable.$convertercreatedAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
      isUsed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_used'])!,
    );
  }

  @override
  $PasswordResetTokensTable createAlias(String alias) {
    return $PasswordResetTokensTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruserId =
      const UuidValueToStringConverter();
  static TypeConverter<DateTime, PgDateTime> $converterexpiresAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class PasswordResetTokensCompanion extends UpdateCompanion<PasswordResetToken> {
  final Value<String> id;
  final Value<String> userId;
  final Value<bool> isUsed;
  final Value<DateTime> expiresAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const PasswordResetTokensCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.isUsed = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PasswordResetTokensCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    this.isUsed = const Value.absent(),
    required DateTime expiresAt,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        expiresAt = Value(expiresAt);
  static Insertable<PasswordResetToken> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? userId,
    Expression<bool>? isUsed,
    Expression<PgDateTime>? expiresAt,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (isUsed != null) 'is_used': isUsed,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PasswordResetTokensCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<bool>? isUsed,
      Value<DateTime>? expiresAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return PasswordResetTokensCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      isUsed: isUsed ?? this.isUsed,
      expiresAt: expiresAt ?? this.expiresAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(
          $PasswordResetTokensTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (userId.present) {
      map['user_id'] = Variable<UuidValue>(
          $PasswordResetTokensTable.$converteruserId.toSql(userId.value),
          PgTypes.uuid);
    }
    if (isUsed.present) {
      map['is_used'] = Variable<bool>(isUsed.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<PgDateTime>(
          $PasswordResetTokensTable.$converterexpiresAt.toSql(expiresAt.value),
          dialectAwareTimestamp);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $PasswordResetTokensTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $PasswordResetTokensTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PasswordResetTokensCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('isUsed: $isUsed, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UploadsTable extends Uploads with TableInfo<$UploadsTable, Upload> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UploadsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($UploadsTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String?, UuidValue> uploaderId =
      GeneratedColumn<UuidValue>('uploader_id', aliasedName, true,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE SET NULL'))
          .withConverter<String?>($UploadsTable.$converteruploaderIdn);
  static const VerificationMeta _mimeTypeMeta =
      const VerificationMeta('mimeType');
  @override
  late final GeneratedColumn<String> mimeType = GeneratedColumn<String>(
      'mime_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
      'size', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($UploadsTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($UploadsTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, uploaderId, mimeType, size, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'uploads';
  @override
  VerificationContext validateIntegrity(Insertable<Upload> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mime_type')) {
      context.handle(_mimeTypeMeta,
          mimeType.isAcceptableOrUnknown(data['mime_type']!, _mimeTypeMeta));
    } else if (isInserting) {
      context.missing(_mimeTypeMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
          _sizeMeta, size.isAcceptableOrUnknown(data['size']!, _sizeMeta));
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Upload map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Upload(
      id: $UploadsTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      uploaderId: $UploadsTable.$converteruploaderIdn.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}uploader_id'])),
      mimeType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mime_type'])!,
      size: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}size'])!,
      updatedAt: $UploadsTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $UploadsTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $UploadsTable createAlias(String alias) {
    return $UploadsTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruploaderId =
      const UuidValueToStringConverter();
  static TypeConverter<String?, UuidValue?> $converteruploaderIdn =
      NullAwareTypeConverter.wrap($converteruploaderId);
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class UploadsCompanion extends UpdateCompanion<Upload> {
  final Value<String> id;
  final Value<String?> uploaderId;
  final Value<String> mimeType;
  final Value<int> size;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const UploadsCompanion({
    this.id = const Value.absent(),
    this.uploaderId = const Value.absent(),
    this.mimeType = const Value.absent(),
    this.size = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UploadsCompanion.insert({
    this.id = const Value.absent(),
    this.uploaderId = const Value.absent(),
    required String mimeType,
    required int size,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : mimeType = Value(mimeType),
        size = Value(size);
  static Insertable<Upload> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? uploaderId,
    Expression<String>? mimeType,
    Expression<int>? size,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uploaderId != null) 'uploader_id': uploaderId,
      if (mimeType != null) 'mime_type': mimeType,
      if (size != null) 'size': size,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UploadsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? uploaderId,
      Value<String>? mimeType,
      Value<int>? size,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return UploadsCompanion(
      id: id ?? this.id,
      uploaderId: uploaderId ?? this.uploaderId,
      mimeType: mimeType ?? this.mimeType,
      size: size ?? this.size,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(
          $UploadsTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (uploaderId.present) {
      map['uploader_id'] = Variable<UuidValue>(
          $UploadsTable.$converteruploaderIdn.toSql(uploaderId.value),
          PgTypes.uuid);
    }
    if (mimeType.present) {
      map['mime_type'] = Variable<String>(mimeType.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $UploadsTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $UploadsTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UploadsCompanion(')
          ..write('id: $id, ')
          ..write('uploaderId: $uploaderId, ')
          ..write('mimeType: $mimeType, ')
          ..write('size: $size, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $AuthSessionsTable authSessions = $AuthSessionsTable(this);
  late final $EmailVerificationCodesTable emailVerificationCodes =
      $EmailVerificationCodesTable(this);
  late final $PasswordResetTokensTable passwordResetTokens =
      $PasswordResetTokensTable(this);
  late final $UploadsTable uploads = $UploadsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        authSessions,
        emailVerificationCodes,
        passwordResetTokens,
        uploads
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('auth_sessions', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('email_verification_codes', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('password_reset_tokens', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('uploads', kind: UpdateKind.update),
            ],
          ),
        ],
      );
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<String> id,
  required String email,
  required String passwordHash,
  Value<bool> emailVerified,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> id,
  Value<String> email,
  Value<String> passwordHash,
  Value<bool> emailVerified,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$UsersTableReferences
    extends BaseReferences<_$Database, $UsersTable, User> {
  $$UsersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AuthSessionsTable, List<AuthSession>>
      _SessionsInUsersTable(_$Database db) => MultiTypedResultKey.fromTable(
          db.authSessions,
          aliasName: $_aliasNameGenerator(db.users.id, db.authSessions.userId));

  $$AuthSessionsTableProcessedTableManager get SessionsInUsers {
    final manager = $$AuthSessionsTableTableManager($_db, $_db.authSessions)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_SessionsInUsersTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$EmailVerificationCodesTable, List<EmailCode>>
      _EmailVerificationCodesInUsersTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.emailVerificationCodes,
              aliasName: $_aliasNameGenerator(
                  db.users.id, db.emailVerificationCodes.userId));

  $$EmailVerificationCodesTableProcessedTableManager
      get EmailVerificationCodesInUsers {
    final manager = $$EmailVerificationCodesTableTableManager(
            $_db, $_db.emailVerificationCodes)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult
        .readTableOrNull(_EmailVerificationCodesInUsersTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PasswordResetTokensTable,
      List<PasswordResetToken>> _PasswordResetTokensInUsersTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.passwordResetTokens,
          aliasName:
              $_aliasNameGenerator(db.users.id, db.passwordResetTokens.userId));

  $$PasswordResetTokensTableProcessedTableManager
      get PasswordResetTokensInUsers {
    final manager = $$PasswordResetTokensTableTableManager(
            $_db, $_db.passwordResetTokens)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_PasswordResetTokensInUsersTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$UploadsTable, List<Upload>> _UploadsInUsersTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.uploads,
          aliasName: $_aliasNameGenerator(db.users.id, db.uploads.uploaderId));

  $$UploadsTableProcessedTableManager get UploadsInUsers {
    final manager = $$UploadsTableTableManager($_db, $_db.uploads).filter(
        (f) => f.uploaderId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_UploadsInUsersTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UsersTableFilterComposer extends Composer<_$Database, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<String, String, UuidValue> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get emailVerified => $composableBuilder(
      column: $table.emailVerified, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  Expression<bool> SessionsInUsers(
      Expression<bool> Function($$AuthSessionsTableFilterComposer f) f) {
    final $$AuthSessionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.authSessions,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AuthSessionsTableFilterComposer(
              $db: $db,
              $table: $db.authSessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> EmailVerificationCodesInUsers(
      Expression<bool> Function($$EmailVerificationCodesTableFilterComposer f)
          f) {
    final $$EmailVerificationCodesTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.emailVerificationCodes,
            getReferencedColumn: (t) => t.userId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$EmailVerificationCodesTableFilterComposer(
                  $db: $db,
                  $table: $db.emailVerificationCodes,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<bool> PasswordResetTokensInUsers(
      Expression<bool> Function($$PasswordResetTokensTableFilterComposer f) f) {
    final $$PasswordResetTokensTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.passwordResetTokens,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PasswordResetTokensTableFilterComposer(
              $db: $db,
              $table: $db.passwordResetTokens,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> UploadsInUsers(
      Expression<bool> Function($$UploadsTableFilterComposer f) f) {
    final $$UploadsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.uploaderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UploadsTableFilterComposer(
              $db: $db,
              $table: $db.uploads,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UsersTableOrderingComposer extends Composer<_$Database, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get emailVerified => $composableBuilder(
      column: $table.emailVerified,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer extends Composer<_$Database, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => column);

  GeneratedColumn<bool> get emailVerified => $composableBuilder(
      column: $table.emailVerified, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> SessionsInUsers<T extends Object>(
      Expression<T> Function($$AuthSessionsTableAnnotationComposer a) f) {
    final $$AuthSessionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.authSessions,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AuthSessionsTableAnnotationComposer(
              $db: $db,
              $table: $db.authSessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> EmailVerificationCodesInUsers<T extends Object>(
      Expression<T> Function($$EmailVerificationCodesTableAnnotationComposer a)
          f) {
    final $$EmailVerificationCodesTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.emailVerificationCodes,
            getReferencedColumn: (t) => t.userId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$EmailVerificationCodesTableAnnotationComposer(
                  $db: $db,
                  $table: $db.emailVerificationCodes,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> PasswordResetTokensInUsers<T extends Object>(
      Expression<T> Function($$PasswordResetTokensTableAnnotationComposer a)
          f) {
    final $$PasswordResetTokensTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.passwordResetTokens,
            getReferencedColumn: (t) => t.userId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$PasswordResetTokensTableAnnotationComposer(
                  $db: $db,
                  $table: $db.passwordResetTokens,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> UploadsInUsers<T extends Object>(
      Expression<T> Function($$UploadsTableAnnotationComposer a) f) {
    final $$UploadsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.uploaderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UploadsTableAnnotationComposer(
              $db: $db,
              $table: $db.uploads,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UsersTableTableManager extends RootTableManager<
    _$Database,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, $$UsersTableReferences),
    User,
    PrefetchHooks Function(
        {bool SessionsInUsers,
        bool EmailVerificationCodesInUsers,
        bool PasswordResetTokensInUsers,
        bool UploadsInUsers})> {
  $$UsersTableTableManager(_$Database db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> passwordHash = const Value.absent(),
            Value<bool> emailVerified = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            email: email,
            passwordHash: passwordHash,
            emailVerified: emailVerified,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String email,
            required String passwordHash,
            Value<bool> emailVerified = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            email: email,
            passwordHash: passwordHash,
            emailVerified: emailVerified,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UsersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {SessionsInUsers = false,
              EmailVerificationCodesInUsers = false,
              PasswordResetTokensInUsers = false,
              UploadsInUsers = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (SessionsInUsers) db.authSessions,
                if (EmailVerificationCodesInUsers) db.emailVerificationCodes,
                if (PasswordResetTokensInUsers) db.passwordResetTokens,
                if (UploadsInUsers) db.uploads
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (SessionsInUsers)
                    await $_getPrefetchedData<User, $UsersTable, AuthSession>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._SessionsInUsersTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .SessionsInUsers,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (EmailVerificationCodesInUsers)
                    await $_getPrefetchedData<User, $UsersTable, EmailCode>(
                        currentTable: table,
                        referencedTable: $$UsersTableReferences
                            ._EmailVerificationCodesInUsersTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .EmailVerificationCodesInUsers,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (PasswordResetTokensInUsers)
                    await $_getPrefetchedData<User, $UsersTable,
                            PasswordResetToken>(
                        currentTable: table,
                        referencedTable: $$UsersTableReferences
                            ._PasswordResetTokensInUsersTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .PasswordResetTokensInUsers,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (UploadsInUsers)
                    await $_getPrefetchedData<User, $UsersTable, Upload>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._UploadsInUsersTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .UploadsInUsers,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.uploaderId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, $$UsersTableReferences),
    User,
    PrefetchHooks Function(
        {bool SessionsInUsers,
        bool EmailVerificationCodesInUsers,
        bool PasswordResetTokensInUsers,
        bool UploadsInUsers})>;
typedef $$AuthSessionsTableCreateCompanionBuilder = AuthSessionsCompanion
    Function({
  Value<String> id,
  required String userId,
  required String refreshToken,
  required String ip,
  required String deviceInfo,
  required DateTime expiresAt,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$AuthSessionsTableUpdateCompanionBuilder = AuthSessionsCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<String> refreshToken,
  Value<String> ip,
  Value<String> deviceInfo,
  Value<DateTime> expiresAt,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$AuthSessionsTableReferences
    extends BaseReferences<_$Database, $AuthSessionsTable, AuthSession> {
  $$AuthSessionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$Database db) => db.users
      .createAlias($_aliasNameGenerator(db.authSessions.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<UuidValue>('user_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$AuthSessionsTableFilterComposer
    extends Composer<_$Database, $AuthSessionsTable> {
  $$AuthSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<String, String, UuidValue> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get refreshToken => $composableBuilder(
      column: $table.refreshToken, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ip => $composableBuilder(
      column: $table.ip, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get deviceInfo => $composableBuilder(
      column: $table.deviceInfo, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get expiresAt => $composableBuilder(
          column: $table.expiresAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableFilterComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AuthSessionsTableOrderingComposer
    extends Composer<_$Database, $AuthSessionsTable> {
  $$AuthSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get refreshToken => $composableBuilder(
      column: $table.refreshToken,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ip => $composableBuilder(
      column: $table.ip, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get deviceInfo => $composableBuilder(
      column: $table.deviceInfo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableOrderingComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AuthSessionsTableAnnotationComposer
    extends Composer<_$Database, $AuthSessionsTable> {
  $$AuthSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get refreshToken => $composableBuilder(
      column: $table.refreshToken, builder: (column) => column);

  GeneratedColumn<String> get ip =>
      $composableBuilder(column: $table.ip, builder: (column) => column);

  GeneratedColumn<String> get deviceInfo => $composableBuilder(
      column: $table.deviceInfo, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableAnnotationComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AuthSessionsTableTableManager extends RootTableManager<
    _$Database,
    $AuthSessionsTable,
    AuthSession,
    $$AuthSessionsTableFilterComposer,
    $$AuthSessionsTableOrderingComposer,
    $$AuthSessionsTableAnnotationComposer,
    $$AuthSessionsTableCreateCompanionBuilder,
    $$AuthSessionsTableUpdateCompanionBuilder,
    (AuthSession, $$AuthSessionsTableReferences),
    AuthSession,
    PrefetchHooks Function({bool userId})> {
  $$AuthSessionsTableTableManager(_$Database db, $AuthSessionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AuthSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AuthSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AuthSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> refreshToken = const Value.absent(),
            Value<String> ip = const Value.absent(),
            Value<String> deviceInfo = const Value.absent(),
            Value<DateTime> expiresAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AuthSessionsCompanion(
            id: id,
            userId: userId,
            refreshToken: refreshToken,
            ip: ip,
            deviceInfo: deviceInfo,
            expiresAt: expiresAt,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String userId,
            required String refreshToken,
            required String ip,
            required String deviceInfo,
            required DateTime expiresAt,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AuthSessionsCompanion.insert(
            id: id,
            userId: userId,
            refreshToken: refreshToken,
            ip: ip,
            deviceInfo: deviceInfo,
            expiresAt: expiresAt,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AuthSessionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$AuthSessionsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$AuthSessionsTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$AuthSessionsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $AuthSessionsTable,
    AuthSession,
    $$AuthSessionsTableFilterComposer,
    $$AuthSessionsTableOrderingComposer,
    $$AuthSessionsTableAnnotationComposer,
    $$AuthSessionsTableCreateCompanionBuilder,
    $$AuthSessionsTableUpdateCompanionBuilder,
    (AuthSession, $$AuthSessionsTableReferences),
    AuthSession,
    PrefetchHooks Function({bool userId})>;
typedef $$EmailVerificationCodesTableCreateCompanionBuilder
    = EmailVerificationCodesCompanion Function({
  Value<String> id,
  required String userId,
  required String code,
  Value<bool> isSuccess,
  required DateTime expiresAt,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$EmailVerificationCodesTableUpdateCompanionBuilder
    = EmailVerificationCodesCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<String> code,
  Value<bool> isSuccess,
  Value<DateTime> expiresAt,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$EmailVerificationCodesTableReferences extends BaseReferences<
    _$Database, $EmailVerificationCodesTable, EmailCode> {
  $$EmailVerificationCodesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$Database db) => db.users.createAlias(
      $_aliasNameGenerator(db.emailVerificationCodes.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<UuidValue>('user_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$EmailVerificationCodesTableFilterComposer
    extends Composer<_$Database, $EmailVerificationCodesTable> {
  $$EmailVerificationCodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<String, String, UuidValue> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isSuccess => $composableBuilder(
      column: $table.isSuccess, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get expiresAt => $composableBuilder(
          column: $table.expiresAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableFilterComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EmailVerificationCodesTableOrderingComposer
    extends Composer<_$Database, $EmailVerificationCodesTable> {
  $$EmailVerificationCodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isSuccess => $composableBuilder(
      column: $table.isSuccess, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableOrderingComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EmailVerificationCodesTableAnnotationComposer
    extends Composer<_$Database, $EmailVerificationCodesTable> {
  $$EmailVerificationCodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<bool> get isSuccess =>
      $composableBuilder(column: $table.isSuccess, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableAnnotationComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EmailVerificationCodesTableTableManager extends RootTableManager<
    _$Database,
    $EmailVerificationCodesTable,
    EmailCode,
    $$EmailVerificationCodesTableFilterComposer,
    $$EmailVerificationCodesTableOrderingComposer,
    $$EmailVerificationCodesTableAnnotationComposer,
    $$EmailVerificationCodesTableCreateCompanionBuilder,
    $$EmailVerificationCodesTableUpdateCompanionBuilder,
    (EmailCode, $$EmailVerificationCodesTableReferences),
    EmailCode,
    PrefetchHooks Function({bool userId})> {
  $$EmailVerificationCodesTableTableManager(
      _$Database db, $EmailVerificationCodesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmailVerificationCodesTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$EmailVerificationCodesTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmailVerificationCodesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<bool> isSuccess = const Value.absent(),
            Value<DateTime> expiresAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EmailVerificationCodesCompanion(
            id: id,
            userId: userId,
            code: code,
            isSuccess: isSuccess,
            expiresAt: expiresAt,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String userId,
            required String code,
            Value<bool> isSuccess = const Value.absent(),
            required DateTime expiresAt,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EmailVerificationCodesCompanion.insert(
            id: id,
            userId: userId,
            code: code,
            isSuccess: isSuccess,
            expiresAt: expiresAt,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$EmailVerificationCodesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable: $$EmailVerificationCodesTableReferences
                        ._userIdTable(db),
                    referencedColumn: $$EmailVerificationCodesTableReferences
                        ._userIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$EmailVerificationCodesTableProcessedTableManager
    = ProcessedTableManager<
        _$Database,
        $EmailVerificationCodesTable,
        EmailCode,
        $$EmailVerificationCodesTableFilterComposer,
        $$EmailVerificationCodesTableOrderingComposer,
        $$EmailVerificationCodesTableAnnotationComposer,
        $$EmailVerificationCodesTableCreateCompanionBuilder,
        $$EmailVerificationCodesTableUpdateCompanionBuilder,
        (EmailCode, $$EmailVerificationCodesTableReferences),
        EmailCode,
        PrefetchHooks Function({bool userId})>;
typedef $$PasswordResetTokensTableCreateCompanionBuilder
    = PasswordResetTokensCompanion Function({
  Value<String> id,
  required String userId,
  Value<bool> isUsed,
  required DateTime expiresAt,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$PasswordResetTokensTableUpdateCompanionBuilder
    = PasswordResetTokensCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<bool> isUsed,
  Value<DateTime> expiresAt,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$PasswordResetTokensTableReferences extends BaseReferences<
    _$Database, $PasswordResetTokensTable, PasswordResetToken> {
  $$PasswordResetTokensTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$Database db) => db.users.createAlias(
      $_aliasNameGenerator(db.passwordResetTokens.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<UuidValue>('user_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PasswordResetTokensTableFilterComposer
    extends Composer<_$Database, $PasswordResetTokensTable> {
  $$PasswordResetTokensTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<String, String, UuidValue> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get isUsed => $composableBuilder(
      column: $table.isUsed, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get expiresAt => $composableBuilder(
          column: $table.expiresAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$UsersTableFilterComposer get userId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableFilterComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PasswordResetTokensTableOrderingComposer
    extends Composer<_$Database, $PasswordResetTokensTable> {
  $$PasswordResetTokensTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isUsed => $composableBuilder(
      column: $table.isUsed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UsersTableOrderingComposer get userId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableOrderingComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PasswordResetTokensTableAnnotationComposer
    extends Composer<_$Database, $PasswordResetTokensTable> {
  $$PasswordResetTokensTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isUsed =>
      $composableBuilder(column: $table.isUsed, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get userId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableAnnotationComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PasswordResetTokensTableTableManager extends RootTableManager<
    _$Database,
    $PasswordResetTokensTable,
    PasswordResetToken,
    $$PasswordResetTokensTableFilterComposer,
    $$PasswordResetTokensTableOrderingComposer,
    $$PasswordResetTokensTableAnnotationComposer,
    $$PasswordResetTokensTableCreateCompanionBuilder,
    $$PasswordResetTokensTableUpdateCompanionBuilder,
    (PasswordResetToken, $$PasswordResetTokensTableReferences),
    PasswordResetToken,
    PrefetchHooks Function({bool userId})> {
  $$PasswordResetTokensTableTableManager(
      _$Database db, $PasswordResetTokensTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PasswordResetTokensTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PasswordResetTokensTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PasswordResetTokensTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<bool> isUsed = const Value.absent(),
            Value<DateTime> expiresAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PasswordResetTokensCompanion(
            id: id,
            userId: userId,
            isUsed: isUsed,
            expiresAt: expiresAt,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String userId,
            Value<bool> isUsed = const Value.absent(),
            required DateTime expiresAt,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PasswordResetTokensCompanion.insert(
            id: id,
            userId: userId,
            isUsed: isUsed,
            expiresAt: expiresAt,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PasswordResetTokensTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$PasswordResetTokensTableReferences._userIdTable(db),
                    referencedColumn: $$PasswordResetTokensTableReferences
                        ._userIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PasswordResetTokensTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $PasswordResetTokensTable,
    PasswordResetToken,
    $$PasswordResetTokensTableFilterComposer,
    $$PasswordResetTokensTableOrderingComposer,
    $$PasswordResetTokensTableAnnotationComposer,
    $$PasswordResetTokensTableCreateCompanionBuilder,
    $$PasswordResetTokensTableUpdateCompanionBuilder,
    (PasswordResetToken, $$PasswordResetTokensTableReferences),
    PasswordResetToken,
    PrefetchHooks Function({bool userId})>;
typedef $$UploadsTableCreateCompanionBuilder = UploadsCompanion Function({
  Value<String> id,
  Value<String?> uploaderId,
  required String mimeType,
  required int size,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$UploadsTableUpdateCompanionBuilder = UploadsCompanion Function({
  Value<String> id,
  Value<String?> uploaderId,
  Value<String> mimeType,
  Value<int> size,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$UploadsTableReferences
    extends BaseReferences<_$Database, $UploadsTable, Upload> {
  $$UploadsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _uploaderIdTable(_$Database db) => db.users
      .createAlias($_aliasNameGenerator(db.uploads.uploaderId, db.users.id));

  $$UsersTableProcessedTableManager? get uploaderId {
    final $_column = $_itemColumn<UuidValue>('uploader_id');
    if ($_column == null) return null;
    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_uploaderIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UploadsTableFilterComposer extends Composer<_$Database, $UploadsTable> {
  $$UploadsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<String, String, UuidValue> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get mimeType => $composableBuilder(
      column: $table.mimeType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get size => $composableBuilder(
      column: $table.size, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$UsersTableFilterComposer get uploaderId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.uploaderId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableFilterComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UploadsTableOrderingComposer
    extends Composer<_$Database, $UploadsTable> {
  $$UploadsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mimeType => $composableBuilder(
      column: $table.mimeType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get size => $composableBuilder(
      column: $table.size, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UsersTableOrderingComposer get uploaderId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.uploaderId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableOrderingComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UploadsTableAnnotationComposer
    extends Composer<_$Database, $UploadsTable> {
  $$UploadsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get mimeType =>
      $composableBuilder(column: $table.mimeType, builder: (column) => column);

  GeneratedColumn<int> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UsersTableAnnotationComposer get uploaderId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.uploaderId,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableAnnotationComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UploadsTableTableManager extends RootTableManager<
    _$Database,
    $UploadsTable,
    Upload,
    $$UploadsTableFilterComposer,
    $$UploadsTableOrderingComposer,
    $$UploadsTableAnnotationComposer,
    $$UploadsTableCreateCompanionBuilder,
    $$UploadsTableUpdateCompanionBuilder,
    (Upload, $$UploadsTableReferences),
    Upload,
    PrefetchHooks Function({bool uploaderId})> {
  $$UploadsTableTableManager(_$Database db, $UploadsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UploadsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UploadsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UploadsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> uploaderId = const Value.absent(),
            Value<String> mimeType = const Value.absent(),
            Value<int> size = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UploadsCompanion(
            id: id,
            uploaderId: uploaderId,
            mimeType: mimeType,
            size: size,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> uploaderId = const Value.absent(),
            required String mimeType,
            required int size,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UploadsCompanion.insert(
            id: id,
            uploaderId: uploaderId,
            mimeType: mimeType,
            size: size,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UploadsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({uploaderId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (uploaderId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.uploaderId,
                    referencedTable:
                        $$UploadsTableReferences._uploaderIdTable(db),
                    referencedColumn:
                        $$UploadsTableReferences._uploaderIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UploadsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $UploadsTable,
    Upload,
    $$UploadsTableFilterComposer,
    $$UploadsTableOrderingComposer,
    $$UploadsTableAnnotationComposer,
    $$UploadsTableCreateCompanionBuilder,
    $$UploadsTableUpdateCompanionBuilder,
    (Upload, $$UploadsTableReferences),
    Upload,
    PrefetchHooks Function({bool uploaderId})>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$AuthSessionsTableTableManager get authSessions =>
      $$AuthSessionsTableTableManager(_db, _db.authSessions);
  $$EmailVerificationCodesTableTableManager get emailVerificationCodes =>
      $$EmailVerificationCodesTableTableManager(
          _db, _db.emailVerificationCodes);
  $$PasswordResetTokensTableTableManager get passwordResetTokens =>
      $$PasswordResetTokensTableTableManager(_db, _db.passwordResetTokens);
  $$UploadsTableTableManager get uploads =>
      $$UploadsTableTableManager(_db, _db.uploads);
}
