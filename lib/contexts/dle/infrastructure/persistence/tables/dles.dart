import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';

@UseRowClass(Dle)
class Dles extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  TextColumn get title => text()();

  TextColumn get description => text().nullable()();

  TextColumn get type => textEnum<DleType>()();

  BoolColumn get isPrivate => boolean().withDefault(const Constant(false))();

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
