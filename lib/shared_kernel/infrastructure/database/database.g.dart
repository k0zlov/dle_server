// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: PgTypes.timestampWithTimezone,
              requiredDuringInsert: false,
              defaultValue: const FunctionCallExpression('now', []))
          .withConverter<DateTime>($UsersTable.$converterupdatedAt);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: PgTypes.timestampWithTimezone,
              requiredDuringInsert: false,
              defaultValue: const FunctionCallExpression('now', []))
          .withConverter<DateTime>($UsersTable.$convertercreatedAt);
  @override
  List<GeneratedColumn> get $columns =>
      [id, email, passwordHash, updatedAt, createdAt];
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
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
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
    context.handle(_updatedAtMeta, const VerificationResult.success());
    context.handle(_createdAtMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      passwordHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password_hash'])!,
      updatedAt: $UsersTable.$converterupdatedAt.fromSql(
          attachedDatabase.typeMapping.read(PgTypes.timestampWithTimezone,
              data['${effectivePrefix}updated_at'])!),
      createdAt: $UsersTable.$convertercreatedAt.fromSql(
          attachedDatabase.typeMapping.read(PgTypes.timestampWithTimezone,
              data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }

  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const PgDateTimeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const PgDateTimeConverter();
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> email;
  final Value<String> passwordHash;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    required String email,
    required String passwordHash,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        email = Value(email),
        passwordHash = Value(passwordHash);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? email,
    Expression<String>? passwordHash,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<String>? email,
      Value<String>? passwordHash,
      Value<DateTime>? updatedAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      passwordHash: passwordHash ?? this.passwordHash,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $UsersTable.$converterupdatedAt.toSql(updatedAt.value),
          PgTypes.timestampWithTimezone);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $UsersTable.$convertercreatedAt.toSql(createdAt.value),
          PgTypes.timestampWithTimezone);
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES users (id) ON DELETE CASCADE'));
  static const VerificationMeta _refreshTokenMeta =
      const VerificationMeta('refreshToken');
  @override
  late final GeneratedColumn<String> refreshToken = GeneratedColumn<String>(
      'refresh_token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ipMeta = const VerificationMeta('ip');
  @override
  late final GeneratedColumn<String> ip = GeneratedColumn<String>(
      'ip', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deviceInfoMeta =
      const VerificationMeta('deviceInfo');
  @override
  late final GeneratedColumn<String> deviceInfo = GeneratedColumn<String>(
      'device_info', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _expiresAtMeta =
      const VerificationMeta('expiresAt');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> expiresAt =
      GeneratedColumn<PgDateTime>('expires_at', aliasedName, false,
              type: PgTypes.timestampWithTimezone, requiredDuringInsert: true)
          .withConverter<DateTime>($AuthSessionsTable.$converterexpiresAt);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>('updated_at', aliasedName, false,
              type: PgTypes.timestampWithTimezone,
              requiredDuringInsert: false,
              defaultValue: const FunctionCallExpression('now', []))
          .withConverter<DateTime>($AuthSessionsTable.$converterupdatedAt);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>('created_at', aliasedName, false,
              type: PgTypes.timestampWithTimezone,
              requiredDuringInsert: false,
              defaultValue: const FunctionCallExpression('now', []))
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
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
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
    }
    if (data.containsKey('device_info')) {
      context.handle(
          _deviceInfoMeta,
          deviceInfo.isAcceptableOrUnknown(
              data['device_info']!, _deviceInfoMeta));
    }
    context.handle(_expiresAtMeta, const VerificationResult.success());
    context.handle(_updatedAtMeta, const VerificationResult.success());
    context.handle(_createdAtMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AuthSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AuthSession(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      refreshToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refresh_token'])!,
      ip: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ip']),
      deviceInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_info']),
      expiresAt: $AuthSessionsTable.$converterexpiresAt.fromSql(
          attachedDatabase.typeMapping.read(PgTypes.timestampWithTimezone,
              data['${effectivePrefix}expires_at'])!),
      updatedAt: $AuthSessionsTable.$converterupdatedAt.fromSql(
          attachedDatabase.typeMapping.read(PgTypes.timestampWithTimezone,
              data['${effectivePrefix}updated_at'])!),
      createdAt: $AuthSessionsTable.$convertercreatedAt.fromSql(
          attachedDatabase.typeMapping.read(PgTypes.timestampWithTimezone,
              data['${effectivePrefix}created_at'])!),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $AuthSessionsTable createAlias(String alias) {
    return $AuthSessionsTable(attachedDatabase, alias);
  }

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
  final Value<String?> ip;
  final Value<String?> deviceInfo;
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
    required String id,
    required String userId,
    required String refreshToken,
    this.ip = const Value.absent(),
    this.deviceInfo = const Value.absent(),
    required DateTime expiresAt,
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        refreshToken = Value(refreshToken),
        expiresAt = Value(expiresAt);
  static Insertable<AuthSession> custom({
    Expression<String>? id,
    Expression<String>? userId,
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
      Value<String?>? ip,
      Value<String?>? deviceInfo,
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
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
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
          PgTypes.timestampWithTimezone);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
          $AuthSessionsTable.$converterupdatedAt.toSql(updatedAt.value),
          PgTypes.timestampWithTimezone);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
          $AuthSessionsTable.$convertercreatedAt.toSql(createdAt.value),
          PgTypes.timestampWithTimezone);
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

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $AuthSessionsTable authSessions = $AuthSessionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, authSessions];
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
        ],
      );
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required String id,
  required String email,
  required String passwordHash,
  Value<DateTime> updatedAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> id,
  Value<String> email,
  Value<String> passwordHash,
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
        .filter((f) => f.userId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_SessionsInUsersTable($_db));
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
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => ColumnFilters(column));

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
}

class $$UsersTableOrderingComposer extends Composer<_$Database, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
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
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => column);

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
    PrefetchHooks Function({bool SessionsInUsers})> {
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
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            email: email,
            passwordHash: passwordHash,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String email,
            required String passwordHash,
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            email: email,
            passwordHash: passwordHash,
            updatedAt: updatedAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UsersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({SessionsInUsers = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (SessionsInUsers) db.authSessions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (SessionsInUsers)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._SessionsInUsersTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0)
                                .SessionsInUsers,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
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
    PrefetchHooks Function({bool SessionsInUsers})>;
typedef $$AuthSessionsTableCreateCompanionBuilder = AuthSessionsCompanion
    Function({
  required String id,
  required String userId,
  required String refreshToken,
  Value<String?> ip,
  Value<String?> deviceInfo,
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
  Value<String?> ip,
  Value<String?> deviceInfo,
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
    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id($_item.userId));
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
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

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
  ColumnOrderings<String> get id => $composableBuilder(
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
  GeneratedColumn<String> get id =>
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
            Value<String?> ip = const Value.absent(),
            Value<String?> deviceInfo = const Value.absent(),
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
            required String id,
            required String userId,
            required String refreshToken,
            Value<String?> ip = const Value.absent(),
            Value<String?> deviceInfo = const Value.absent(),
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

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$AuthSessionsTableTableManager get authSessions =>
      $$AuthSessionsTableTableManager(_db, _db.authSessions);
}
