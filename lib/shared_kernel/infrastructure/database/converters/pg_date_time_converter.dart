import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

class PgDateTimeConverter extends TypeConverter<DateTime, PgDateTime> {
  const PgDateTimeConverter();

  @override
  DateTime fromSql(PgDateTime fromDb) {
    return fromDb.dateTime;
  }

  @override
  PgDateTime toSql(DateTime value) {
    return PgDateTime(value);
  }
}
