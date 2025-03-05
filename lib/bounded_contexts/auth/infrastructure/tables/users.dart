import 'package:dle_server/bounded_contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/shared_kernel/infrastructure/database/index.dart';

@UseRowClass(User)
class Users extends Table {
  TextColumn get id => text()();

  TextColumn get email => text().unique()();

  TextColumn get passwordHash => text()();

  TimestampColumn get updatedAt => customType(PgTypes.timestampWithTimezone)
      .withDefault(const FunctionCallExpression('now', []))
      .map(const PgDateTimeConverter())();

  TimestampColumn get createdAt => customType(PgTypes.timestampWithTimezone)
      .withDefault(const FunctionCallExpression('now', []))
      .map(const PgDateTimeConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
