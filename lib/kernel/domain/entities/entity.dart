import 'package:uuid/v4.dart';

abstract class Entity {
  Entity({String? id}) : id = id ?? const UuidV4().generate();

  final String id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Entity && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
