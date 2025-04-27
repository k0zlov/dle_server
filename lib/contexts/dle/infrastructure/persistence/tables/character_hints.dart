import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/converters/hint_value_converter.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/characters.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/hints.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
export 'package:dle_server/contexts/dle/domain/value_objects/hint_value/hint_value.dart';
export 'package:dle_server/contexts/dle/infrastructure/persistence/converters/hint_value_converter.dart';

@UseRowClass(CharacterHint)
@TableIndex(name: 'character_hints_characterId', columns: {#characterId})
class CharacterHints extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('CharacterHintsInHints')
  UuidColumn get hintId =>
      customType(PgTypes.uuid)
          .references(Hints, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  @ReferenceName('CharacterHintsInCharacters')
  UuidColumn get characterId =>
      customType(PgTypes.uuid)
          .references(Characters, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  Column<Object> get value =>
      customType(PgTypes.jsonb).map(const HintValueConverter()).nullable()();

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
