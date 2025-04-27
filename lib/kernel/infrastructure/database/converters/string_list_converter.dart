import 'dart:convert';
import 'package:drift/drift.dart';

/// Type converter for List<String> to String and back
class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();

  @override
  List<String> fromSql(String? fromDb) {
    if (fromDb == null || fromDb.isEmpty) return [];
    try {
      return List<String>.from(jsonDecode(fromDb) as List<dynamic>);
    } catch (e) {
      return [];
    }
  }

  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}
