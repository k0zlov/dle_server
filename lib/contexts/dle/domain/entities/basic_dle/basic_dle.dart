import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'basic_dle.mapper.dart';

@MappableClass()
class BasicDle extends Entity with BasicDleMappable {
  BasicDle({
    super.id,
    required this.dleId,
    required this.updatedAt,
    required this.createdAt,
    this.parameters = const <Parameter>[],
  });

  BasicDle.create({required this.dleId, this.parameters = const <Parameter>[]})
    : updatedAt = DateTime.now(),
      createdAt = DateTime.now();

  final String dleId;

  final List<Parameter> parameters;

  final DateTime updatedAt;
  final DateTime createdAt;
}
