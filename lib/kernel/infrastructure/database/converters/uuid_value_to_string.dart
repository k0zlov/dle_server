import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

class UuidValueToStringConverter extends TypeConverter<String, UuidValue> {
  const UuidValueToStringConverter();

  @override
  String fromSql(UuidValue fromDb) {
    return fromDb.uuid;
  }

  @override
  UuidValue toSql(String value) {
    return UuidValue.fromString(value);
  }
}
