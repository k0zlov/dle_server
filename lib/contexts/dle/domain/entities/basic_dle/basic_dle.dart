import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'basic_dle.mapper.dart';

@MappableClass()
class BasicDle extends Entity with BasicDleMappable {
  BasicDle({super.id, required this.updatedAt, required this.createdAt});

  final DateTime updatedAt;
  final DateTime createdAt;
}
