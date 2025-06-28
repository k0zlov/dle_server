import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dle_assets.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dles.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/string_list_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/character/character.dart';

@UseRowClass(Character)
class Characters extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('CharactersInDle')
  UuidColumn get dleId =>
      customType(PgTypes.uuid)
          .references(Dles, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  @ReferenceName('CharactersInAssets')
  UuidColumn get assetId =>
      customType(PgTypes.uuid)
          .references(DleAssets, #id, onDelete: KeyAction.setNull)
          .map(const UuidValueToStringConverter())
          .nullable()();

  TextColumn get name => text()();

  BoolColumn get isHidden => boolean().withDefault(const Constant(false))();

  TextColumn get aliases => text().map(const StringListConverter())();

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
