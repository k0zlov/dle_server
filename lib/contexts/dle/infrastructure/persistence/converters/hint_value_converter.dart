import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/contexts/dle/domain/value_objects/hint_value/hint_value.dart';
import 'package:drift/drift.dart';

class HintValueConverter extends TypeConverter<HintValue, Object> {
  const HintValueConverter();

  @override
  HintValue fromSql(Object fromDb) {
    try {
      fromDb as Map<String, dynamic>;
    } catch (e) {
      return HintValue(type: HintType.text, data: null);
    }

    // Deserialize JSON string from the database into a Dart `HintValue` object
    return HintValueMapper.fromMap(fromDb);
  }

  @override
  Map<String, dynamic> toSql(HintValue value) {
    // Serialize the `HintValue` object into a JSON string for database storage
    return value.toMap();
  }
}
