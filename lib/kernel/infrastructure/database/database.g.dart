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

class $ProfilesTable extends Profiles with TableInfo<$ProfilesTable, Profile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfilesTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($ProfilesTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> userId =
      GeneratedColumn<UuidValue>('user_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($ProfilesTable.$converteruserId);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  late final GeneratedColumnWithTypeConverter<String?, UuidValue> pictureId =
      GeneratedColumn<UuidValue>('picture_id', aliasedName, true,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES uploads (id) ON DELETE CASCADE'))
          .withConverter<String?>($ProfilesTable.$converterpictureIdn);
  static const VerificationMeta _isSetUpMeta =
      const VerificationMeta('isSetUp');
  @override
  late final GeneratedColumn<bool> isSetUp = GeneratedColumn<bool>(
      'is_set_up', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultValue: const Constant(false));
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($ProfilesTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($ProfilesTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, username, pictureId, isSetUp, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profiles';
  @override
  VerificationContext validateIntegrity(Insertable<Profile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('is_set_up')) {
      context.handle(_isSetUpMeta,
          isSetUp.isAcceptableOrUnknown(data['is_set_up']!, _isSetUpMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {id, userId},
      ];
  @override
  Profile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Profile(
      id: $ProfilesTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      userId: $ProfilesTable.$converteruserId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}user_id'])!),
      isSetUp: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_set_up'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      pictureId: $ProfilesTable.$converterpictureIdn.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}picture_id'])),
      updatedAt: $ProfilesTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $ProfilesTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $ProfilesTable createAlias(String alias) {
    return $ProfilesTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruserId =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converterpictureId =
      const UuidValueToStringConverter();
  static TypeConverter<String?, UuidValue?> $converterpictureIdn =
      NullAwareTypeConverter.wrap($converterpictureId);
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class ProfilesCompanion extends UpdateCompanion<Profile> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> username;
  final Value<String?> pictureId;
  final Value<bool> isSetUp;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ProfilesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.username = const Value.absent(),
    this.pictureId = const Value.absent(),
    this.isSetUp = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfilesCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String username,
    this.pictureId = const Value.absent(),
    this.isSetUp = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        username = Value(username);
  static Insertable<Profile> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? userId,
    Expression<String>? username,
    Expression<UuidValue>? pictureId,
    Expression<bool>? isSetUp,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (username != null) 'username': username,
      if (pictureId != null) 'picture_id': pictureId,
      if (isSetUp != null) 'is_set_up': isSetUp,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfilesCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? username,
      Value<String?>? pictureId,
      Value<bool>? isSetUp,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ProfilesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      pictureId: pictureId ?? this.pictureId,
      isSetUp: isSetUp ?? this.isSetUp,
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
          $ProfilesTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (userId.present) {
      map['user_id'] = Variable<UuidValue>(
          $ProfilesTable.$converteruserId.toSql(userId.value), PgTypes.uuid);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (pictureId.present) {
      map['picture_id'] = Variable<UuidValue>(
          $ProfilesTable.$converterpictureIdn.toSql(pictureId.value),
          PgTypes.uuid);
    }
    if (isSetUp.present) {
      map['is_set_up'] = Variable<bool>(isSetUp.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $ProfilesTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $ProfilesTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfilesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('pictureId: $pictureId, ')
          ..write('isSetUp: $isSetUp, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DlesTable extends Dles with TableInfo<$DlesTable, Dle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DlesTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($DlesTable.$converterid);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<DleType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<DleType>($DlesTable.$convertertype);
  static const VerificationMeta _isPrivateMeta =
      const VerificationMeta('isPrivate');
  @override
  late final GeneratedColumn<bool> isPrivate = GeneratedColumn<bool>(
      'is_private', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultValue: const Constant(false));
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DlesTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DlesTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, type, isPrivate, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dles';
  @override
  VerificationContext validateIntegrity(Insertable<Dle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('is_private')) {
      context.handle(_isPrivateMeta,
          isPrivate.isAcceptableOrUnknown(data['is_private']!, _isPrivateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Dle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Dle(
      id: $DlesTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      type: $DlesTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      updatedAt: $DlesTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $DlesTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
      isPrivate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_private'])!,
    );
  }

  @override
  $DlesTable createAlias(String alias) {
    return $DlesTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static JsonTypeConverter2<DleType, String, String> $convertertype =
      const EnumNameConverter<DleType>(DleType.values);
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class DlesCompanion extends UpdateCompanion<Dle> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<DleType> type;
  final Value<bool> isPrivate;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DlesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.isPrivate = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DlesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.description = const Value.absent(),
    required DleType type,
    this.isPrivate = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : title = Value(title),
        type = Value(type);
  static Insertable<Dle> custom({
    Expression<UuidValue>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? type,
    Expression<bool>? isPrivate,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (isPrivate != null) 'is_private': isPrivate,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DlesCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String?>? description,
      Value<DleType>? type,
      Value<bool>? isPrivate,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DlesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      isPrivate: isPrivate ?? this.isPrivate,
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
          $DlesTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] =
          Variable<String>($DlesTable.$convertertype.toSql(type.value));
    }
    if (isPrivate.present) {
      map['is_private'] = Variable<bool>(isPrivate.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $DlesTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $DlesTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DlesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('isPrivate: $isPrivate, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DleEditorsTable extends DleEditors
    with TableInfo<$DleEditorsTable, DleEditor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DleEditorsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($DleEditorsTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> dleId =
      GeneratedColumn<UuidValue>('dle_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES dles (id) ON DELETE CASCADE'))
          .withConverter<String>($DleEditorsTable.$converterdleId);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> userId =
      GeneratedColumn<UuidValue>('user_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($DleEditorsTable.$converteruserId);
  @override
  late final GeneratedColumnWithTypeConverter<DleEditorRole, String> role =
      GeneratedColumn<String>('role', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<DleEditorRole>($DleEditorsTable.$converterrole);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DleEditorsTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DleEditorsTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, dleId, userId, role, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dle_editors';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DleEditor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DleEditor(
      id: $DleEditorsTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      userId: $DleEditorsTable.$converteruserId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}user_id'])!),
      dleId: $DleEditorsTable.$converterdleId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}dle_id'])!),
      role: $DleEditorsTable.$converterrole.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}role'])!),
      updatedAt: $DleEditorsTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $DleEditorsTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $DleEditorsTable createAlias(String alias) {
    return $DleEditorsTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converterdleId =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruserId =
      const UuidValueToStringConverter();
  static JsonTypeConverter2<DleEditorRole, String, String> $converterrole =
      const EnumNameConverter<DleEditorRole>(DleEditorRole.values);
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class DleEditorsCompanion extends UpdateCompanion<DleEditor> {
  final Value<String> id;
  final Value<String> dleId;
  final Value<String> userId;
  final Value<DleEditorRole> role;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DleEditorsCompanion({
    this.id = const Value.absent(),
    this.dleId = const Value.absent(),
    this.userId = const Value.absent(),
    this.role = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DleEditorsCompanion.insert({
    this.id = const Value.absent(),
    required String dleId,
    required String userId,
    required DleEditorRole role,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : dleId = Value(dleId),
        userId = Value(userId),
        role = Value(role);
  static Insertable<DleEditor> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? dleId,
    Expression<UuidValue>? userId,
    Expression<String>? role,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dleId != null) 'dle_id': dleId,
      if (userId != null) 'user_id': userId,
      if (role != null) 'role': role,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DleEditorsCompanion copyWith(
      {Value<String>? id,
      Value<String>? dleId,
      Value<String>? userId,
      Value<DleEditorRole>? role,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DleEditorsCompanion(
      id: id ?? this.id,
      dleId: dleId ?? this.dleId,
      userId: userId ?? this.userId,
      role: role ?? this.role,
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
          $DleEditorsTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (dleId.present) {
      map['dle_id'] = Variable<UuidValue>(
          $DleEditorsTable.$converterdleId.toSql(dleId.value), PgTypes.uuid);
    }
    if (userId.present) {
      map['user_id'] = Variable<UuidValue>(
          $DleEditorsTable.$converteruserId.toSql(userId.value), PgTypes.uuid);
    }
    if (role.present) {
      map['role'] =
          Variable<String>($DleEditorsTable.$converterrole.toSql(role.value));
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $DleEditorsTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $DleEditorsTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DleEditorsCompanion(')
          ..write('id: $id, ')
          ..write('dleId: $dleId, ')
          ..write('userId: $userId, ')
          ..write('role: $role, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DleAssetsTable extends DleAssets
    with TableInfo<$DleAssetsTable, DleAsset> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DleAssetsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($DleAssetsTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> dleId =
      GeneratedColumn<UuidValue>('dle_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES dles (id) ON DELETE CASCADE'))
          .withConverter<String>($DleAssetsTable.$converterdleId);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> userId =
      GeneratedColumn<UuidValue>('user_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($DleAssetsTable.$converteruserId);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> uploadId =
      GeneratedColumn<UuidValue>('upload_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES uploads (id) ON DELETE CASCADE'))
          .withConverter<String>($DleAssetsTable.$converteruploadId);
  @override
  late final GeneratedColumnWithTypeConverter<DleAssetType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<DleAssetType>($DleAssetsTable.$convertertype);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DleAssetsTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DleAssetsTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, dleId, userId, uploadId, type, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dle_assets';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DleAsset map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DleAsset(
      id: $DleAssetsTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      userId: $DleAssetsTable.$converteruserId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}user_id'])!),
      dleId: $DleAssetsTable.$converterdleId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}dle_id'])!),
      uploadId: $DleAssetsTable.$converteruploadId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}upload_id'])!),
      type: $DleAssetsTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      updatedAt: $DleAssetsTable.$converterupdatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $DleAssetsTable.$convertercreatedAt.fromSql(attachedDatabase
          .typeMapping
          .read(dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $DleAssetsTable createAlias(String alias) {
    return $DleAssetsTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converterdleId =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruserId =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converteruploadId =
      const UuidValueToStringConverter();
  static JsonTypeConverter2<DleAssetType, String, String> $convertertype =
      const EnumNameConverter<DleAssetType>(DleAssetType.values);
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class DleAssetsCompanion extends UpdateCompanion<DleAsset> {
  final Value<String> id;
  final Value<String> dleId;
  final Value<String> userId;
  final Value<String> uploadId;
  final Value<DleAssetType> type;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DleAssetsCompanion({
    this.id = const Value.absent(),
    this.dleId = const Value.absent(),
    this.userId = const Value.absent(),
    this.uploadId = const Value.absent(),
    this.type = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DleAssetsCompanion.insert({
    this.id = const Value.absent(),
    required String dleId,
    required String userId,
    required String uploadId,
    required DleAssetType type,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : dleId = Value(dleId),
        userId = Value(userId),
        uploadId = Value(uploadId),
        type = Value(type);
  static Insertable<DleAsset> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? dleId,
    Expression<UuidValue>? userId,
    Expression<UuidValue>? uploadId,
    Expression<String>? type,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dleId != null) 'dle_id': dleId,
      if (userId != null) 'user_id': userId,
      if (uploadId != null) 'upload_id': uploadId,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DleAssetsCompanion copyWith(
      {Value<String>? id,
      Value<String>? dleId,
      Value<String>? userId,
      Value<String>? uploadId,
      Value<DleAssetType>? type,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DleAssetsCompanion(
      id: id ?? this.id,
      dleId: dleId ?? this.dleId,
      userId: userId ?? this.userId,
      uploadId: uploadId ?? this.uploadId,
      type: type ?? this.type,
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
          $DleAssetsTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (dleId.present) {
      map['dle_id'] = Variable<UuidValue>(
          $DleAssetsTable.$converterdleId.toSql(dleId.value), PgTypes.uuid);
    }
    if (userId.present) {
      map['user_id'] = Variable<UuidValue>(
          $DleAssetsTable.$converteruserId.toSql(userId.value), PgTypes.uuid);
    }
    if (uploadId.present) {
      map['upload_id'] = Variable<UuidValue>(
          $DleAssetsTable.$converteruploadId.toSql(uploadId.value),
          PgTypes.uuid);
    }
    if (type.present) {
      map['type'] =
          Variable<String>($DleAssetsTable.$convertertype.toSql(type.value));
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $DleAssetsTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $DleAssetsTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DleAssetsCompanion(')
          ..write('id: $id, ')
          ..write('dleId: $dleId, ')
          ..write('userId: $userId, ')
          ..write('uploadId: $uploadId, ')
          ..write('type: $type, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DleInvitationsTable extends DleInvitations
    with TableInfo<$DleInvitationsTable, DleInvitation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DleInvitationsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>('id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: false,
              defaultValue: genRandomUuid())
          .withConverter<String>($DleInvitationsTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> dleId =
      GeneratedColumn<UuidValue>('dle_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES dles (id) ON DELETE CASCADE'))
          .withConverter<String>($DleInvitationsTable.$converterdleId);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> inviterId =
      GeneratedColumn<UuidValue>('inviter_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($DleInvitationsTable.$converterinviterId);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> inviteeId =
      GeneratedColumn<UuidValue>('invitee_id', aliasedName, false,
              type: PgTypes.uuid,
              requiredDuringInsert: true,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES users (id) ON DELETE CASCADE'))
          .withConverter<String>($DleInvitationsTable.$converterinviteeId);
  @override
  late final GeneratedColumnWithTypeConverter<DleInvitationStatus, String>
      status = GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<DleInvitationStatus>(
              $DleInvitationsTable.$converterstatus);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DleInvitationsTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: dialectAwareTimestamp,
              requiredDuringInsert: false,
              defaultValue: const CustomExpression('CURRENT_TIMESTAMP'))
          .withConverter<DateTime>($DleInvitationsTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, dleId, inviterId, inviteeId, status, updatedAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dle_invitations';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DleInvitation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DleInvitation(
      id: $DleInvitationsTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!),
      dleId: $DleInvitationsTable.$converterdleId.fromSql(attachedDatabase
          .typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}dle_id'])!),
      inviterId: $DleInvitationsTable.$converterinviterId.fromSql(
          attachedDatabase.typeMapping
              .read(PgTypes.uuid, data['${effectivePrefix}inviter_id'])!),
      inviteeId: $DleInvitationsTable.$converterinviteeId.fromSql(
          attachedDatabase.typeMapping
              .read(PgTypes.uuid, data['${effectivePrefix}invitee_id'])!),
      status: $DleInvitationsTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      updatedAt: $DleInvitationsTable.$converterupdatedAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}updated_at'])!),
      createdAt: $DleInvitationsTable.$convertercreatedAt.fromSql(
          attachedDatabase.typeMapping.read(
              dialectAwareTimestamp, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $DleInvitationsTable createAlias(String alias) {
    return $DleInvitationsTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converterdleId =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converterinviterId =
      const UuidValueToStringConverter();
  static TypeConverter<String, UuidValue> $converterinviteeId =
      const UuidValueToStringConverter();
  static JsonTypeConverter2<DleInvitationStatus, String, String>
      $converterstatus =
      const EnumNameConverter<DleInvitationStatus>(DleInvitationStatus.values);
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class DleInvitationsCompanion extends UpdateCompanion<DleInvitation> {
  final Value<String> id;
  final Value<String> dleId;
  final Value<String> inviterId;
  final Value<String> inviteeId;
  final Value<DleInvitationStatus> status;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DleInvitationsCompanion({
    this.id = const Value.absent(),
    this.dleId = const Value.absent(),
    this.inviterId = const Value.absent(),
    this.inviteeId = const Value.absent(),
    this.status = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DleInvitationsCompanion.insert({
    this.id = const Value.absent(),
    required String dleId,
    required String inviterId,
    required String inviteeId,
    required DleInvitationStatus status,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : dleId = Value(dleId),
        inviterId = Value(inviterId),
        inviteeId = Value(inviteeId),
        status = Value(status);
  static Insertable<DleInvitation> custom({
    Expression<UuidValue>? id,
    Expression<UuidValue>? dleId,
    Expression<UuidValue>? inviterId,
    Expression<UuidValue>? inviteeId,
    Expression<String>? status,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dleId != null) 'dle_id': dleId,
      if (inviterId != null) 'inviter_id': inviterId,
      if (inviteeId != null) 'invitee_id': inviteeId,
      if (status != null) 'status': status,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DleInvitationsCompanion copyWith(
      {Value<String>? id,
      Value<String>? dleId,
      Value<String>? inviterId,
      Value<String>? inviteeId,
      Value<DleInvitationStatus>? status,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DleInvitationsCompanion(
      id: id ?? this.id,
      dleId: dleId ?? this.dleId,
      inviterId: inviterId ?? this.inviterId,
      inviteeId: inviteeId ?? this.inviteeId,
      status: status ?? this.status,
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
          $DleInvitationsTable.$converterid.toSql(id.value), PgTypes.uuid);
    }
    if (dleId.present) {
      map['dle_id'] = Variable<UuidValue>(
          $DleInvitationsTable.$converterdleId.toSql(dleId.value),
          PgTypes.uuid);
    }
    if (inviterId.present) {
      map['inviter_id'] = Variable<UuidValue>(
          $DleInvitationsTable.$converterinviterId.toSql(inviterId.value),
          PgTypes.uuid);
    }
    if (inviteeId.present) {
      map['invitee_id'] = Variable<UuidValue>(
          $DleInvitationsTable.$converterinviteeId.toSql(inviteeId.value),
          PgTypes.uuid);
    }
    if (status.present) {
      map['status'] = Variable<String>(
          $DleInvitationsTable.$converterstatus.toSql(status.value));
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $DleInvitationsTable.$converterupdatedAt.toSql(updatedAt.value),
          dialectAwareTimestamp);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $DleInvitationsTable.$convertercreatedAt.toSql(createdAt.value),
          dialectAwareTimestamp);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DleInvitationsCompanion(')
          ..write('id: $id, ')
          ..write('dleId: $dleId, ')
          ..write('inviterId: $inviterId, ')
          ..write('inviteeId: $inviteeId, ')
          ..write('status: $status, ')
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
  late final $ProfilesTable profiles = $ProfilesTable(this);
  late final $DlesTable dles = $DlesTable(this);
  late final $DleEditorsTable dleEditors = $DleEditorsTable(this);
  late final $DleAssetsTable dleAssets = $DleAssetsTable(this);
  late final $DleInvitationsTable dleInvitations = $DleInvitationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        authSessions,
        emailVerificationCodes,
        passwordResetTokens,
        uploads,
        profiles,
        dles,
        dleEditors,
        dleAssets,
        dleInvitations
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
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profiles', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('uploads',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('profiles', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('dles',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_editors', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_editors', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('dles',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_assets', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_assets', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('uploads',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_assets', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('dles',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_invitations', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_invitations', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('users',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('dle_invitations', kind: UpdateKind.delete),
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

  static MultiTypedResultKey<$ProfilesTable, List<Profile>> _ProfileInUserTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.profiles,
          aliasName: $_aliasNameGenerator(db.users.id, db.profiles.userId));

  $$ProfilesTableProcessedTableManager get ProfileInUser {
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_ProfileInUserTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleEditorsTable, List<DleEditor>>
      _DleEditorsInUserTable(_$Database db) => MultiTypedResultKey.fromTable(
          db.dleEditors,
          aliasName: $_aliasNameGenerator(db.users.id, db.dleEditors.userId));

  $$DleEditorsTableProcessedTableManager get DleEditorsInUser {
    final manager = $$DleEditorsTableTableManager($_db, $_db.dleEditors)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_DleEditorsInUserTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleAssetsTable, List<DleAsset>>
      _DleAssetsInUserTable(_$Database db) => MultiTypedResultKey.fromTable(
          db.dleAssets,
          aliasName: $_aliasNameGenerator(db.users.id, db.dleAssets.userId));

  $$DleAssetsTableProcessedTableManager get DleAssetsInUser {
    final manager = $$DleAssetsTableTableManager($_db, $_db.dleAssets)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_DleAssetsInUserTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleInvitationsTable, List<DleInvitation>>
      _DleInvitationsInvitersTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.dleInvitations,
              aliasName: $_aliasNameGenerator(
                  db.users.id, db.dleInvitations.inviterId));

  $$DleInvitationsTableProcessedTableManager get DleInvitationsInviters {
    final manager = $$DleInvitationsTableTableManager($_db, $_db.dleInvitations)
        .filter(
            (f) => f.inviterId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_DleInvitationsInvitersTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleInvitationsTable, List<DleInvitation>>
      _DleInvitationsInviteesTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.dleInvitations,
              aliasName: $_aliasNameGenerator(
                  db.users.id, db.dleInvitations.inviteeId));

  $$DleInvitationsTableProcessedTableManager get DleInvitationsInvitees {
    final manager = $$DleInvitationsTableTableManager($_db, $_db.dleInvitations)
        .filter(
            (f) => f.inviteeId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_DleInvitationsInviteesTable($_db));
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

  Expression<bool> ProfileInUser(
      Expression<bool> Function($$ProfilesTableFilterComposer f) f) {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleEditorsInUser(
      Expression<bool> Function($$DleEditorsTableFilterComposer f) f) {
    final $$DleEditorsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleEditors,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleEditorsTableFilterComposer(
              $db: $db,
              $table: $db.dleEditors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleAssetsInUser(
      Expression<bool> Function($$DleAssetsTableFilterComposer f) f) {
    final $$DleAssetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleAssets,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleAssetsTableFilterComposer(
              $db: $db,
              $table: $db.dleAssets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleInvitationsInviters(
      Expression<bool> Function($$DleInvitationsTableFilterComposer f) f) {
    final $$DleInvitationsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleInvitations,
        getReferencedColumn: (t) => t.inviterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleInvitationsTableFilterComposer(
              $db: $db,
              $table: $db.dleInvitations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleInvitationsInvitees(
      Expression<bool> Function($$DleInvitationsTableFilterComposer f) f) {
    final $$DleInvitationsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleInvitations,
        getReferencedColumn: (t) => t.inviteeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleInvitationsTableFilterComposer(
              $db: $db,
              $table: $db.dleInvitations,
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

  Expression<T> ProfileInUser<T extends Object>(
      Expression<T> Function($$ProfilesTableAnnotationComposer a) f) {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleEditorsInUser<T extends Object>(
      Expression<T> Function($$DleEditorsTableAnnotationComposer a) f) {
    final $$DleEditorsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleEditors,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleEditorsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleEditors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleAssetsInUser<T extends Object>(
      Expression<T> Function($$DleAssetsTableAnnotationComposer a) f) {
    final $$DleAssetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleAssets,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleAssetsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleAssets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleInvitationsInviters<T extends Object>(
      Expression<T> Function($$DleInvitationsTableAnnotationComposer a) f) {
    final $$DleInvitationsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleInvitations,
        getReferencedColumn: (t) => t.inviterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleInvitationsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleInvitations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleInvitationsInvitees<T extends Object>(
      Expression<T> Function($$DleInvitationsTableAnnotationComposer a) f) {
    final $$DleInvitationsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleInvitations,
        getReferencedColumn: (t) => t.inviteeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleInvitationsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleInvitations,
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
        bool UploadsInUsers,
        bool ProfileInUser,
        bool DleEditorsInUser,
        bool DleAssetsInUser,
        bool DleInvitationsInviters,
        bool DleInvitationsInvitees})> {
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
              UploadsInUsers = false,
              ProfileInUser = false,
              DleEditorsInUser = false,
              DleAssetsInUser = false,
              DleInvitationsInviters = false,
              DleInvitationsInvitees = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (SessionsInUsers) db.authSessions,
                if (EmailVerificationCodesInUsers) db.emailVerificationCodes,
                if (PasswordResetTokensInUsers) db.passwordResetTokens,
                if (UploadsInUsers) db.uploads,
                if (ProfileInUser) db.profiles,
                if (DleEditorsInUser) db.dleEditors,
                if (DleAssetsInUser) db.dleAssets,
                if (DleInvitationsInviters) db.dleInvitations,
                if (DleInvitationsInvitees) db.dleInvitations
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
                        typedResults: items),
                  if (ProfileInUser)
                    await $_getPrefetchedData<User, $UsersTable, Profile>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._ProfileInUserTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0).ProfileInUser,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (DleEditorsInUser)
                    await $_getPrefetchedData<User, $UsersTable, DleEditor>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._DleEditorsInUserTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .DleEditorsInUser,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (DleAssetsInUser)
                    await $_getPrefetchedData<User, $UsersTable, DleAsset>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._DleAssetsInUserTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .DleAssetsInUser,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (DleInvitationsInviters)
                    await $_getPrefetchedData<User, $UsersTable, DleInvitation>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._DleInvitationsInvitersTable(
                                db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .DleInvitationsInviters,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.inviterId == item.id),
                        typedResults: items),
                  if (DleInvitationsInvitees)
                    await $_getPrefetchedData<User, $UsersTable, DleInvitation>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._DleInvitationsInviteesTable(
                                db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .DleInvitationsInvitees,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.inviteeId == item.id),
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
        bool UploadsInUsers,
        bool ProfileInUser,
        bool DleEditorsInUser,
        bool DleAssetsInUser,
        bool DleInvitationsInviters,
        bool DleInvitationsInvitees})>;
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

  static MultiTypedResultKey<$ProfilesTable, List<Profile>> _profilesRefsTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.profiles,
          aliasName:
              $_aliasNameGenerator(db.uploads.id, db.profiles.pictureId));

  $$ProfilesTableProcessedTableManager get profilesRefs {
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter(
        (f) => f.pictureId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_profilesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleAssetsTable, List<DleAsset>>
      _DleAssetInUploadTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.dleAssets,
              aliasName:
                  $_aliasNameGenerator(db.uploads.id, db.dleAssets.uploadId));

  $$DleAssetsTableProcessedTableManager get DleAssetInUpload {
    final manager = $$DleAssetsTableTableManager($_db, $_db.dleAssets)
        .filter((f) => f.uploadId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_DleAssetInUploadTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
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

  Expression<bool> profilesRefs(
      Expression<bool> Function($$ProfilesTableFilterComposer f) f) {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.pictureId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleAssetInUpload(
      Expression<bool> Function($$DleAssetsTableFilterComposer f) f) {
    final $$DleAssetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleAssets,
        getReferencedColumn: (t) => t.uploadId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleAssetsTableFilterComposer(
              $db: $db,
              $table: $db.dleAssets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
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

  Expression<T> profilesRefs<T extends Object>(
      Expression<T> Function($$ProfilesTableAnnotationComposer a) f) {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.pictureId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleAssetInUpload<T extends Object>(
      Expression<T> Function($$DleAssetsTableAnnotationComposer a) f) {
    final $$DleAssetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleAssets,
        getReferencedColumn: (t) => t.uploadId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleAssetsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleAssets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
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
    PrefetchHooks Function(
        {bool uploaderId, bool profilesRefs, bool DleAssetInUpload})> {
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
          prefetchHooksCallback: (
              {uploaderId = false,
              profilesRefs = false,
              DleAssetInUpload = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (profilesRefs) db.profiles,
                if (DleAssetInUpload) db.dleAssets
              ],
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
                return [
                  if (profilesRefs)
                    await $_getPrefetchedData<Upload, $UploadsTable, Profile>(
                        currentTable: table,
                        referencedTable:
                            $$UploadsTableReferences._profilesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UploadsTableReferences(db, table, p0)
                                .profilesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.pictureId == item.id),
                        typedResults: items),
                  if (DleAssetInUpload)
                    await $_getPrefetchedData<Upload, $UploadsTable, DleAsset>(
                        currentTable: table,
                        referencedTable:
                            $$UploadsTableReferences._DleAssetInUploadTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UploadsTableReferences(db, table, p0)
                                .DleAssetInUpload,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.uploadId == item.id),
                        typedResults: items)
                ];
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
    PrefetchHooks Function(
        {bool uploaderId, bool profilesRefs, bool DleAssetInUpload})>;
typedef $$ProfilesTableCreateCompanionBuilder = ProfilesCompanion Function({
  Value<String> id,
  required String userId,
  required String username,
  Value<String?> pictureId,
  Value<bool> isSetUp,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$ProfilesTableUpdateCompanionBuilder = ProfilesCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<String> username,
  Value<String?> pictureId,
  Value<bool> isSetUp,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$ProfilesTableReferences
    extends BaseReferences<_$Database, $ProfilesTable, Profile> {
  $$ProfilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UsersTable _userIdTable(_$Database db) => db.users
      .createAlias($_aliasNameGenerator(db.profiles.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<UuidValue>('user_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UploadsTable _pictureIdTable(_$Database db) => db.uploads
      .createAlias($_aliasNameGenerator(db.profiles.pictureId, db.uploads.id));

  $$UploadsTableProcessedTableManager? get pictureId {
    final $_column = $_itemColumn<UuidValue>('picture_id');
    if ($_column == null) return null;
    final manager = $$UploadsTableTableManager($_db, $_db.uploads)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pictureIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProfilesTableFilterComposer
    extends Composer<_$Database, $ProfilesTable> {
  $$ProfilesTableFilterComposer({
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

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isSetUp => $composableBuilder(
      column: $table.isSetUp, builder: (column) => ColumnFilters(column));

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

  $$UploadsTableFilterComposer get pictureId {
    final $$UploadsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pictureId,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.id,
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
    return composer;
  }
}

class $$ProfilesTableOrderingComposer
    extends Composer<_$Database, $ProfilesTable> {
  $$ProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isSetUp => $composableBuilder(
      column: $table.isSetUp, builder: (column) => ColumnOrderings(column));

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

  $$UploadsTableOrderingComposer get pictureId {
    final $$UploadsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pictureId,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UploadsTableOrderingComposer(
              $db: $db,
              $table: $db.uploads,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProfilesTableAnnotationComposer
    extends Composer<_$Database, $ProfilesTable> {
  $$ProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<bool> get isSetUp =>
      $composableBuilder(column: $table.isSetUp, builder: (column) => column);

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

  $$UploadsTableAnnotationComposer get pictureId {
    final $$UploadsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pictureId,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.id,
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
    return composer;
  }
}

class $$ProfilesTableTableManager extends RootTableManager<
    _$Database,
    $ProfilesTable,
    Profile,
    $$ProfilesTableFilterComposer,
    $$ProfilesTableOrderingComposer,
    $$ProfilesTableAnnotationComposer,
    $$ProfilesTableCreateCompanionBuilder,
    $$ProfilesTableUpdateCompanionBuilder,
    (Profile, $$ProfilesTableReferences),
    Profile,
    PrefetchHooks Function({bool userId, bool pictureId})> {
  $$ProfilesTableTableManager(_$Database db, $ProfilesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String?> pictureId = const Value.absent(),
            Value<bool> isSetUp = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfilesCompanion(
            id: id,
            userId: userId,
            username: username,
            pictureId: pictureId,
            isSetUp: isSetUp,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String userId,
            required String username,
            Value<String?> pictureId = const Value.absent(),
            Value<bool> isSetUp = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfilesCompanion.insert(
            id: id,
            userId: userId,
            username: username,
            pictureId: pictureId,
            isSetUp: isSetUp,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ProfilesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({userId = false, pictureId = false}) {
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
                    referencedTable: $$ProfilesTableReferences._userIdTable(db),
                    referencedColumn:
                        $$ProfilesTableReferences._userIdTable(db).id,
                  ) as T;
                }
                if (pictureId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.pictureId,
                    referencedTable:
                        $$ProfilesTableReferences._pictureIdTable(db),
                    referencedColumn:
                        $$ProfilesTableReferences._pictureIdTable(db).id,
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

typedef $$ProfilesTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $ProfilesTable,
    Profile,
    $$ProfilesTableFilterComposer,
    $$ProfilesTableOrderingComposer,
    $$ProfilesTableAnnotationComposer,
    $$ProfilesTableCreateCompanionBuilder,
    $$ProfilesTableUpdateCompanionBuilder,
    (Profile, $$ProfilesTableReferences),
    Profile,
    PrefetchHooks Function({bool userId, bool pictureId})>;
typedef $$DlesTableCreateCompanionBuilder = DlesCompanion Function({
  Value<String> id,
  required String title,
  Value<String?> description,
  required DleType type,
  Value<bool> isPrivate,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$DlesTableUpdateCompanionBuilder = DlesCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<String?> description,
  Value<DleType> type,
  Value<bool> isPrivate,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$DlesTableReferences
    extends BaseReferences<_$Database, $DlesTable, Dle> {
  $$DlesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DleEditorsTable, List<DleEditor>>
      _DleEditorsInDleTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.dleEditors,
              aliasName: $_aliasNameGenerator(db.dles.id, db.dleEditors.dleId));

  $$DleEditorsTableProcessedTableManager get DleEditorsInDle {
    final manager = $$DleEditorsTableTableManager($_db, $_db.dleEditors)
        .filter((f) => f.dleId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_DleEditorsInDleTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleAssetsTable, List<DleAsset>>
      _DleAssetsInDleTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.dleAssets,
              aliasName: $_aliasNameGenerator(db.dles.id, db.dleAssets.dleId));

  $$DleAssetsTableProcessedTableManager get DleAssetsInDle {
    final manager = $$DleAssetsTableTableManager($_db, $_db.dleAssets)
        .filter((f) => f.dleId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache = $_typedResult.readTableOrNull(_DleAssetsInDleTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DleInvitationsTable, List<DleInvitation>>
      _DleInvitationsInDleTable(_$Database db) => MultiTypedResultKey.fromTable(
          db.dleInvitations,
          aliasName: $_aliasNameGenerator(db.dles.id, db.dleInvitations.dleId));

  $$DleInvitationsTableProcessedTableManager get DleInvitationsInDle {
    final manager = $$DleInvitationsTableTableManager($_db, $_db.dleInvitations)
        .filter((f) => f.dleId.id.sqlEquals($_itemColumn<UuidValue>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_DleInvitationsInDleTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DlesTableFilterComposer extends Composer<_$Database, $DlesTable> {
  $$DlesTableFilterComposer({
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

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DleType, DleType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get isPrivate => $composableBuilder(
      column: $table.isPrivate, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  Expression<bool> DleEditorsInDle(
      Expression<bool> Function($$DleEditorsTableFilterComposer f) f) {
    final $$DleEditorsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleEditors,
        getReferencedColumn: (t) => t.dleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleEditorsTableFilterComposer(
              $db: $db,
              $table: $db.dleEditors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleAssetsInDle(
      Expression<bool> Function($$DleAssetsTableFilterComposer f) f) {
    final $$DleAssetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleAssets,
        getReferencedColumn: (t) => t.dleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleAssetsTableFilterComposer(
              $db: $db,
              $table: $db.dleAssets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> DleInvitationsInDle(
      Expression<bool> Function($$DleInvitationsTableFilterComposer f) f) {
    final $$DleInvitationsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleInvitations,
        getReferencedColumn: (t) => t.dleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleInvitationsTableFilterComposer(
              $db: $db,
              $table: $db.dleInvitations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DlesTableOrderingComposer extends Composer<_$Database, $DlesTable> {
  $$DlesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPrivate => $composableBuilder(
      column: $table.isPrivate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$DlesTableAnnotationComposer extends Composer<_$Database, $DlesTable> {
  $$DlesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DleType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<bool> get isPrivate =>
      $composableBuilder(column: $table.isPrivate, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> DleEditorsInDle<T extends Object>(
      Expression<T> Function($$DleEditorsTableAnnotationComposer a) f) {
    final $$DleEditorsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleEditors,
        getReferencedColumn: (t) => t.dleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleEditorsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleEditors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleAssetsInDle<T extends Object>(
      Expression<T> Function($$DleAssetsTableAnnotationComposer a) f) {
    final $$DleAssetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleAssets,
        getReferencedColumn: (t) => t.dleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleAssetsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleAssets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> DleInvitationsInDle<T extends Object>(
      Expression<T> Function($$DleInvitationsTableAnnotationComposer a) f) {
    final $$DleInvitationsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dleInvitations,
        getReferencedColumn: (t) => t.dleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DleInvitationsTableAnnotationComposer(
              $db: $db,
              $table: $db.dleInvitations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DlesTableTableManager extends RootTableManager<
    _$Database,
    $DlesTable,
    Dle,
    $$DlesTableFilterComposer,
    $$DlesTableOrderingComposer,
    $$DlesTableAnnotationComposer,
    $$DlesTableCreateCompanionBuilder,
    $$DlesTableUpdateCompanionBuilder,
    (Dle, $$DlesTableReferences),
    Dle,
    PrefetchHooks Function(
        {bool DleEditorsInDle,
        bool DleAssetsInDle,
        bool DleInvitationsInDle})> {
  $$DlesTableTableManager(_$Database db, $DlesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DlesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DlesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DlesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<DleType> type = const Value.absent(),
            Value<bool> isPrivate = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DlesCompanion(
            id: id,
            title: title,
            description: description,
            type: type,
            isPrivate: isPrivate,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String title,
            Value<String?> description = const Value.absent(),
            required DleType type,
            Value<bool> isPrivate = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DlesCompanion.insert(
            id: id,
            title: title,
            description: description,
            type: type,
            isPrivate: isPrivate,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DlesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {DleEditorsInDle = false,
              DleAssetsInDle = false,
              DleInvitationsInDle = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (DleEditorsInDle) db.dleEditors,
                if (DleAssetsInDle) db.dleAssets,
                if (DleInvitationsInDle) db.dleInvitations
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (DleEditorsInDle)
                    await $_getPrefetchedData<Dle, $DlesTable, DleEditor>(
                        currentTable: table,
                        referencedTable:
                            $$DlesTableReferences._DleEditorsInDleTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DlesTableReferences(db, table, p0)
                                .DleEditorsInDle,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.dleId == item.id),
                        typedResults: items),
                  if (DleAssetsInDle)
                    await $_getPrefetchedData<Dle, $DlesTable, DleAsset>(
                        currentTable: table,
                        referencedTable:
                            $$DlesTableReferences._DleAssetsInDleTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DlesTableReferences(db, table, p0).DleAssetsInDle,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.dleId == item.id),
                        typedResults: items),
                  if (DleInvitationsInDle)
                    await $_getPrefetchedData<Dle, $DlesTable, DleInvitation>(
                        currentTable: table,
                        referencedTable:
                            $$DlesTableReferences._DleInvitationsInDleTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DlesTableReferences(db, table, p0)
                                .DleInvitationsInDle,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.dleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DlesTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $DlesTable,
    Dle,
    $$DlesTableFilterComposer,
    $$DlesTableOrderingComposer,
    $$DlesTableAnnotationComposer,
    $$DlesTableCreateCompanionBuilder,
    $$DlesTableUpdateCompanionBuilder,
    (Dle, $$DlesTableReferences),
    Dle,
    PrefetchHooks Function(
        {bool DleEditorsInDle, bool DleAssetsInDle, bool DleInvitationsInDle})>;
typedef $$DleEditorsTableCreateCompanionBuilder = DleEditorsCompanion Function({
  Value<String> id,
  required String dleId,
  required String userId,
  required DleEditorRole role,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$DleEditorsTableUpdateCompanionBuilder = DleEditorsCompanion Function({
  Value<String> id,
  Value<String> dleId,
  Value<String> userId,
  Value<DleEditorRole> role,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$DleEditorsTableReferences
    extends BaseReferences<_$Database, $DleEditorsTable, DleEditor> {
  $$DleEditorsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DlesTable _dleIdTable(_$Database db) => db.dles
      .createAlias($_aliasNameGenerator(db.dleEditors.dleId, db.dles.id));

  $$DlesTableProcessedTableManager get dleId {
    final $_column = $_itemColumn<UuidValue>('dle_id')!;

    final manager = $$DlesTableTableManager($_db, $_db.dles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UsersTable _userIdTable(_$Database db) => db.users
      .createAlias($_aliasNameGenerator(db.dleEditors.userId, db.users.id));

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

class $$DleEditorsTableFilterComposer
    extends Composer<_$Database, $DleEditorsTable> {
  $$DleEditorsTableFilterComposer({
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

  ColumnWithTypeConverterFilters<DleEditorRole, DleEditorRole, String>
      get role => $composableBuilder(
          column: $table.role,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$DlesTableFilterComposer get dleId {
    final $$DlesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableFilterComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

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

class $$DleEditorsTableOrderingComposer
    extends Composer<_$Database, $DleEditorsTable> {
  $$DleEditorsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get role => $composableBuilder(
      column: $table.role, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$DlesTableOrderingComposer get dleId {
    final $$DlesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableOrderingComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

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

class $$DleEditorsTableAnnotationComposer
    extends Composer<_$Database, $DleEditorsTable> {
  $$DleEditorsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DleEditorRole, String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$DlesTableAnnotationComposer get dleId {
    final $$DlesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableAnnotationComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

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

class $$DleEditorsTableTableManager extends RootTableManager<
    _$Database,
    $DleEditorsTable,
    DleEditor,
    $$DleEditorsTableFilterComposer,
    $$DleEditorsTableOrderingComposer,
    $$DleEditorsTableAnnotationComposer,
    $$DleEditorsTableCreateCompanionBuilder,
    $$DleEditorsTableUpdateCompanionBuilder,
    (DleEditor, $$DleEditorsTableReferences),
    DleEditor,
    PrefetchHooks Function({bool dleId, bool userId})> {
  $$DleEditorsTableTableManager(_$Database db, $DleEditorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DleEditorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DleEditorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DleEditorsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> dleId = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DleEditorRole> role = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DleEditorsCompanion(
            id: id,
            dleId: dleId,
            userId: userId,
            role: role,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String dleId,
            required String userId,
            required DleEditorRole role,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DleEditorsCompanion.insert(
            id: id,
            dleId: dleId,
            userId: userId,
            role: role,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DleEditorsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({dleId = false, userId = false}) {
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
                if (dleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.dleId,
                    referencedTable:
                        $$DleEditorsTableReferences._dleIdTable(db),
                    referencedColumn:
                        $$DleEditorsTableReferences._dleIdTable(db).id,
                  ) as T;
                }
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$DleEditorsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$DleEditorsTableReferences._userIdTable(db).id,
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

typedef $$DleEditorsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $DleEditorsTable,
    DleEditor,
    $$DleEditorsTableFilterComposer,
    $$DleEditorsTableOrderingComposer,
    $$DleEditorsTableAnnotationComposer,
    $$DleEditorsTableCreateCompanionBuilder,
    $$DleEditorsTableUpdateCompanionBuilder,
    (DleEditor, $$DleEditorsTableReferences),
    DleEditor,
    PrefetchHooks Function({bool dleId, bool userId})>;
typedef $$DleAssetsTableCreateCompanionBuilder = DleAssetsCompanion Function({
  Value<String> id,
  required String dleId,
  required String userId,
  required String uploadId,
  required DleAssetType type,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$DleAssetsTableUpdateCompanionBuilder = DleAssetsCompanion Function({
  Value<String> id,
  Value<String> dleId,
  Value<String> userId,
  Value<String> uploadId,
  Value<DleAssetType> type,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$DleAssetsTableReferences
    extends BaseReferences<_$Database, $DleAssetsTable, DleAsset> {
  $$DleAssetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DlesTable _dleIdTable(_$Database db) =>
      db.dles.createAlias($_aliasNameGenerator(db.dleAssets.dleId, db.dles.id));

  $$DlesTableProcessedTableManager get dleId {
    final $_column = $_itemColumn<UuidValue>('dle_id')!;

    final manager = $$DlesTableTableManager($_db, $_db.dles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UsersTable _userIdTable(_$Database db) => db.users
      .createAlias($_aliasNameGenerator(db.dleAssets.userId, db.users.id));

  $$UsersTableProcessedTableManager get userId {
    final $_column = $_itemColumn<UuidValue>('user_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UploadsTable _uploadIdTable(_$Database db) => db.uploads
      .createAlias($_aliasNameGenerator(db.dleAssets.uploadId, db.uploads.id));

  $$UploadsTableProcessedTableManager get uploadId {
    final $_column = $_itemColumn<UuidValue>('upload_id')!;

    final manager = $$UploadsTableTableManager($_db, $_db.uploads)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_uploadIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DleAssetsTableFilterComposer
    extends Composer<_$Database, $DleAssetsTable> {
  $$DleAssetsTableFilterComposer({
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

  ColumnWithTypeConverterFilters<DleAssetType, DleAssetType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$DlesTableFilterComposer get dleId {
    final $$DlesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableFilterComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

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

  $$UploadsTableFilterComposer get uploadId {
    final $$UploadsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.uploadId,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.id,
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
    return composer;
  }
}

class $$DleAssetsTableOrderingComposer
    extends Composer<_$Database, $DleAssetsTable> {
  $$DleAssetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$DlesTableOrderingComposer get dleId {
    final $$DlesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableOrderingComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

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

  $$UploadsTableOrderingComposer get uploadId {
    final $$UploadsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.uploadId,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UploadsTableOrderingComposer(
              $db: $db,
              $table: $db.uploads,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DleAssetsTableAnnotationComposer
    extends Composer<_$Database, $DleAssetsTable> {
  $$DleAssetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DleAssetType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$DlesTableAnnotationComposer get dleId {
    final $$DlesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableAnnotationComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

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

  $$UploadsTableAnnotationComposer get uploadId {
    final $$UploadsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.uploadId,
        referencedTable: $db.uploads,
        getReferencedColumn: (t) => t.id,
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
    return composer;
  }
}

class $$DleAssetsTableTableManager extends RootTableManager<
    _$Database,
    $DleAssetsTable,
    DleAsset,
    $$DleAssetsTableFilterComposer,
    $$DleAssetsTableOrderingComposer,
    $$DleAssetsTableAnnotationComposer,
    $$DleAssetsTableCreateCompanionBuilder,
    $$DleAssetsTableUpdateCompanionBuilder,
    (DleAsset, $$DleAssetsTableReferences),
    DleAsset,
    PrefetchHooks Function({bool dleId, bool userId, bool uploadId})> {
  $$DleAssetsTableTableManager(_$Database db, $DleAssetsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DleAssetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DleAssetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DleAssetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> dleId = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> uploadId = const Value.absent(),
            Value<DleAssetType> type = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DleAssetsCompanion(
            id: id,
            dleId: dleId,
            userId: userId,
            uploadId: uploadId,
            type: type,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String dleId,
            required String userId,
            required String uploadId,
            required DleAssetType type,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DleAssetsCompanion.insert(
            id: id,
            dleId: dleId,
            userId: userId,
            uploadId: uploadId,
            type: type,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DleAssetsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {dleId = false, userId = false, uploadId = false}) {
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
                if (dleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.dleId,
                    referencedTable: $$DleAssetsTableReferences._dleIdTable(db),
                    referencedColumn:
                        $$DleAssetsTableReferences._dleIdTable(db).id,
                  ) as T;
                }
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$DleAssetsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$DleAssetsTableReferences._userIdTable(db).id,
                  ) as T;
                }
                if (uploadId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.uploadId,
                    referencedTable:
                        $$DleAssetsTableReferences._uploadIdTable(db),
                    referencedColumn:
                        $$DleAssetsTableReferences._uploadIdTable(db).id,
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

typedef $$DleAssetsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $DleAssetsTable,
    DleAsset,
    $$DleAssetsTableFilterComposer,
    $$DleAssetsTableOrderingComposer,
    $$DleAssetsTableAnnotationComposer,
    $$DleAssetsTableCreateCompanionBuilder,
    $$DleAssetsTableUpdateCompanionBuilder,
    (DleAsset, $$DleAssetsTableReferences),
    DleAsset,
    PrefetchHooks Function({bool dleId, bool userId, bool uploadId})>;
typedef $$DleInvitationsTableCreateCompanionBuilder = DleInvitationsCompanion
    Function({
  Value<String> id,
  required String dleId,
  required String inviterId,
  required String inviteeId,
  required DleInvitationStatus status,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$DleInvitationsTableUpdateCompanionBuilder = DleInvitationsCompanion
    Function({
  Value<String> id,
  Value<String> dleId,
  Value<String> inviterId,
  Value<String> inviteeId,
  Value<DleInvitationStatus> status,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$DleInvitationsTableReferences
    extends BaseReferences<_$Database, $DleInvitationsTable, DleInvitation> {
  $$DleInvitationsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $DlesTable _dleIdTable(_$Database db) => db.dles
      .createAlias($_aliasNameGenerator(db.dleInvitations.dleId, db.dles.id));

  $$DlesTableProcessedTableManager get dleId {
    final $_column = $_itemColumn<UuidValue>('dle_id')!;

    final manager = $$DlesTableTableManager($_db, $_db.dles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UsersTable _inviterIdTable(_$Database db) => db.users.createAlias(
      $_aliasNameGenerator(db.dleInvitations.inviterId, db.users.id));

  $$UsersTableProcessedTableManager get inviterId {
    final $_column = $_itemColumn<UuidValue>('inviter_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_inviterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UsersTable _inviteeIdTable(_$Database db) => db.users.createAlias(
      $_aliasNameGenerator(db.dleInvitations.inviteeId, db.users.id));

  $$UsersTableProcessedTableManager get inviteeId {
    final $_column = $_itemColumn<UuidValue>('invitee_id')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_inviteeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DleInvitationsTableFilterComposer
    extends Composer<_$Database, $DleInvitationsTable> {
  $$DleInvitationsTableFilterComposer({
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

  ColumnWithTypeConverterFilters<DleInvitationStatus, DleInvitationStatus,
          String>
      get status => $composableBuilder(
          column: $table.status,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get updatedAt => $composableBuilder(
          column: $table.updatedAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
      get createdAt => $composableBuilder(
          column: $table.createdAt,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$DlesTableFilterComposer get dleId {
    final $$DlesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableFilterComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UsersTableFilterComposer get inviterId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.inviterId,
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

  $$UsersTableFilterComposer get inviteeId {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.inviteeId,
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

class $$DleInvitationsTableOrderingComposer
    extends Composer<_$Database, $DleInvitationsTable> {
  $$DleInvitationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$DlesTableOrderingComposer get dleId {
    final $$DlesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableOrderingComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UsersTableOrderingComposer get inviterId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.inviterId,
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

  $$UsersTableOrderingComposer get inviteeId {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.inviteeId,
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

class $$DleInvitationsTableAnnotationComposer
    extends Composer<_$Database, $DleInvitationsTable> {
  $$DleInvitationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DleInvitationStatus, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$DlesTableAnnotationComposer get dleId {
    final $$DlesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dleId,
        referencedTable: $db.dles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DlesTableAnnotationComposer(
              $db: $db,
              $table: $db.dles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UsersTableAnnotationComposer get inviterId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.inviterId,
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

  $$UsersTableAnnotationComposer get inviteeId {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.inviteeId,
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

class $$DleInvitationsTableTableManager extends RootTableManager<
    _$Database,
    $DleInvitationsTable,
    DleInvitation,
    $$DleInvitationsTableFilterComposer,
    $$DleInvitationsTableOrderingComposer,
    $$DleInvitationsTableAnnotationComposer,
    $$DleInvitationsTableCreateCompanionBuilder,
    $$DleInvitationsTableUpdateCompanionBuilder,
    (DleInvitation, $$DleInvitationsTableReferences),
    DleInvitation,
    PrefetchHooks Function({bool dleId, bool inviterId, bool inviteeId})> {
  $$DleInvitationsTableTableManager(_$Database db, $DleInvitationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DleInvitationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DleInvitationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DleInvitationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> dleId = const Value.absent(),
            Value<String> inviterId = const Value.absent(),
            Value<String> inviteeId = const Value.absent(),
            Value<DleInvitationStatus> status = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DleInvitationsCompanion(
            id: id,
            dleId: dleId,
            inviterId: inviterId,
            inviteeId: inviteeId,
            status: status,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String dleId,
            required String inviterId,
            required String inviteeId,
            required DleInvitationStatus status,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DleInvitationsCompanion.insert(
            id: id,
            dleId: dleId,
            inviterId: inviterId,
            inviteeId: inviteeId,
            status: status,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DleInvitationsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {dleId = false, inviterId = false, inviteeId = false}) {
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
                if (dleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.dleId,
                    referencedTable:
                        $$DleInvitationsTableReferences._dleIdTable(db),
                    referencedColumn:
                        $$DleInvitationsTableReferences._dleIdTable(db).id,
                  ) as T;
                }
                if (inviterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.inviterId,
                    referencedTable:
                        $$DleInvitationsTableReferences._inviterIdTable(db),
                    referencedColumn:
                        $$DleInvitationsTableReferences._inviterIdTable(db).id,
                  ) as T;
                }
                if (inviteeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.inviteeId,
                    referencedTable:
                        $$DleInvitationsTableReferences._inviteeIdTable(db),
                    referencedColumn:
                        $$DleInvitationsTableReferences._inviteeIdTable(db).id,
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

typedef $$DleInvitationsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $DleInvitationsTable,
    DleInvitation,
    $$DleInvitationsTableFilterComposer,
    $$DleInvitationsTableOrderingComposer,
    $$DleInvitationsTableAnnotationComposer,
    $$DleInvitationsTableCreateCompanionBuilder,
    $$DleInvitationsTableUpdateCompanionBuilder,
    (DleInvitation, $$DleInvitationsTableReferences),
    DleInvitation,
    PrefetchHooks Function({bool dleId, bool inviterId, bool inviteeId})>;

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
  $$ProfilesTableTableManager get profiles =>
      $$ProfilesTableTableManager(_db, _db.profiles);
  $$DlesTableTableManager get dles => $$DlesTableTableManager(_db, _db.dles);
  $$DleEditorsTableTableManager get dleEditors =>
      $$DleEditorsTableTableManager(_db, _db.dleEditors);
  $$DleAssetsTableTableManager get dleAssets =>
      $$DleAssetsTableTableManager(_db, _db.dleAssets);
  $$DleInvitationsTableTableManager get dleInvitations =>
      $$DleInvitationsTableTableManager(_db, _db.dleInvitations);
}
