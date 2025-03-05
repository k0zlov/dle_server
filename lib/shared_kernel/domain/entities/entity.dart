import 'package:uuid/v4.dart';

abstract class Entity {
  Entity({
    String? id,
  }) : id = id ?? const UuidV4().generate();

  final String id;
}
