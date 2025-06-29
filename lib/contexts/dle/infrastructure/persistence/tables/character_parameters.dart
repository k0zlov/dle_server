import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/characters.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/parameters.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';

@UseRowClass(CharacterParameter)
@TableIndex(
  name: 'character_parameters_ids',
  columns: {#parameterId, #characterId},
)
class CharacterParameters extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('CharacterParametersInParameters')
  UuidColumn get parameterId =>
      customType(PgTypes.uuid)
          .references(Parameters, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  @ReferenceName('CharacterParametersInCharacters')
  UuidColumn get characterId =>
      customType(PgTypes.uuid)
          .references(Characters, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  TextColumn get value => text()();

  IntColumn get index => integer()();

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
