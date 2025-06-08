import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/converters/parameter_value_converter.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/parameters.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
export 'package:dle_server/contexts/dle/domain/value_objects/parameter_value/parameter_value.dart';
export 'package:dle_server/contexts/dle/infrastructure/persistence/converters/parameter_value_converter.dart';

@UseRowClass(SelectableValue)
@TableIndex(name: 'selectable_values_parameter_id', columns: {#parameterId})
class SelectableValues extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('SelectableValuesInParameters')
  UuidColumn get parameterId =>
      customType(PgTypes.uuid)
          .references(Parameters, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  TextColumn get description => text()();

  Column<Object> get value =>
      customType(PgTypes.jsonb).map(const ParameterValueConverter())();

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
