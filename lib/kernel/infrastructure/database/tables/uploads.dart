import 'package:dle_server/contexts/auth/infrastructure/persistence/tables/users.dart';
import 'package:dle_server/kernel/domain/entities/upload/upload.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

@UseRowClass(Upload)
class Uploads extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('UploadsInUsers')
  UuidColumn get uploaderId =>
      customType(PgTypes.uuid)
          .nullable()
          .references(Users, #id, onDelete: KeyAction.setNull)
          .map(const UuidValueToStringConverter())();

  TextColumn get mimeType => text()();

  IntColumn get size => integer()();

  TimestampColumn get updatedAt =>
      customType(dialectAwareTimestamp)
          .map(const PgDateTimeConverter())
          .withDefault(const CustomExpression('CURRENT_TIMESTAMP'))();

  TimestampColumn get createdAt =>
      customType(dialectAwareTimestamp)
          .map(const PgDateTimeConverter())
          .withDefault(const CustomExpression('CURRENT_TIMESTAMP'))();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
