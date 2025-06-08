import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/basic_dles.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';

@UseRowClass(Parameter)
@TableIndex(name: 'parameters_basic_dle_id', columns: {#basicDleId})
class Parameters extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('ParametersInBasicDle')
  UuidColumn get basicDleId =>
      customType(PgTypes.uuid)
          .references(BasicDles, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  TextColumn get title => text()();

  TextColumn get description => text()();

  TextColumn get type => textEnum<ParameterType>()();

  TextColumn get compareMode => textEnum<CompareMode>()();

  BoolColumn get isReverseCompared => boolean()();

  BoolColumn get allowsMultipleValues => boolean()();

  BoolColumn get isSelectable => boolean()();

  BoolColumn get isHidden => boolean()();

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
