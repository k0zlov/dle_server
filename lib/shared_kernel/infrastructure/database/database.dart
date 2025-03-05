import 'package:dle_server/bounded_contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/bounded_contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/bounded_contexts/auth/infrastructure/persistence/tables/auth_sessions.dart';
import 'package:dle_server/bounded_contexts/auth/infrastructure/persistence/tables/users.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    AuthSessions,
    Users,
  ],
)
class Database extends _$Database {
  Database(super.e);

  @override
  int get schemaVersion => 1;
}
