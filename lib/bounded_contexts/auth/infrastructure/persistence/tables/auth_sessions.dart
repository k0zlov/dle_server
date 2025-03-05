import 'package:dle_server/bounded_contexts/auth/domain/entities/auth_session/auth_session.dart';
import 'package:dle_server/bounded_contexts/auth/infrastructure/persistence/tables/users.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/index.dart';

@UseRowClass(AuthSession)
class AuthSessions extends Table {
  TextColumn get id => text()();

  @ReferenceName('SessionsInUsers')
  TextColumn get userId => text().references(
        Users,
        #id,
        onDelete: KeyAction.cascade,
      )();

  TextColumn get refreshToken => text()();

  TextColumn get ip => text().nullable()();

  TextColumn get deviceInfo => text().nullable()();

  TimestampColumn get expiresAt => customType(PgTypes.timestampWithTimezone)
      .map(const PgDateTimeConverter())();

  TimestampColumn get updatedAt => customType(PgTypes.timestampWithTimezone)
      .withDefault(const FunctionCallExpression('now', []))
      .map(const PgDateTimeConverter())();

  TimestampColumn get createdAt => customType(PgTypes.timestampWithTimezone)
      .withDefault(const FunctionCallExpression('now', []))
      .map(const PgDateTimeConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
