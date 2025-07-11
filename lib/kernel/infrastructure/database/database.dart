import 'dart:async';

import 'package:dle_server/contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/contexts/auth/domain/entities/password_reset_token/password_reset_token.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/contexts/auth/infrastructure/persistence/tables/auth_sessions.dart';
import 'package:dle_server/contexts/auth/infrastructure/persistence/tables/email_verification_codes.dart';
import 'package:dle_server/contexts/auth/infrastructure/persistence/tables/password_reset_tokens.dart';
import 'package:dle_server/contexts/auth/infrastructure/persistence/tables/users.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/basic_dles.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/character_hints.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/character_parameters.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/characters.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dle_assets.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dle_editors.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dle_invitations.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dles.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/hints.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/parameters.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/selectable_values.dart';
import 'package:dle_server/contexts/profiles/infrastructure/persistence/tables/profiles.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/string_list_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/migration_strategy.dart';
import 'package:dle_server/kernel/infrastructure/database/tables/uploads.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';
import 'package:dle_server/kernel/infrastructure/extensions/dot_env_extension.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:injectable/injectable.dart';
import 'package:postgres/postgres.dart';

export 'package:drift/drift.dart';
export 'package:drift_postgres/drift_postgres.dart';

part 'database.g.dart';

@lazySingleton
@DriftDatabase(
  tables: [
    Users,
    AuthSessions,
    EmailVerificationCodes,
    PasswordResetTokens,
    Uploads,
    Profiles,
    Dles,
    Characters,
    DleEditors,
    DleAssets,
    DleInvitations,
    Hints,
    CharacterHints,
    BasicDles,
    Parameters,
    SelectableValues,
    CharacterParameters,
  ],
)
class Database extends _$Database {
  Database(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => migrationStrategy();

  @FactoryMethod()
  static Future<Database> create() async {
    final Database db = Database(
      PgDatabase(
        settings: const ConnectionSettings(
          // If you expect to talk to a Postgres database over a public connection,
          // please use SslMode.verifyFull instead.
          sslMode: SslMode.disable,
        ),
        logStatements: false,
        endpoint: Endpoint(
          host: env(DotEnvKey.databaseHost),
          port: int.tryParse(env(DotEnvKey.databasePort)) ?? 5432,
          database: env(DotEnvKey.databaseName),
          password: env(DotEnvKey.databasePassword),
          username: env(DotEnvKey.databaseUsername),
        ),
      ),
    );
    await db.testConnection();
    return db;
  }

  Future<void> testConnection() async {
    try {
      await customStatement('SELECT 1');
      print('Connected to database');
    } catch (e) {
      print('Could not connect to database: $e');
    }
  }
}
