import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/contexts/dle/domain/value_objects/parameter_value/parameter_value.dart';
import 'package:drift/drift.dart';

class ParameterValueConverter extends TypeConverter<ParameterValue, Object> {
  const ParameterValueConverter();

  @override
  ParameterValue fromSql(Object fromDb) {
    try {
      fromDb as Map<String, dynamic>;
    } catch (e) {
      return const ParameterValue(type: ParameterType.text, data: null);
    }

    // Deserialize JSON string from the database into a Dart `ParameterValue` object
    return ParameterValueMapper.fromMap(fromDb);
  }

  @override
  Map<String, dynamic> toSql(ParameterValue value) {
    // Serialize the `ParameterValue` object into a JSON string for database storage
    return value.toMap();
  }
}
