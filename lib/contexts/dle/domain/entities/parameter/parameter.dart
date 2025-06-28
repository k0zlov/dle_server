import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';
import 'package:uuid/uuid.dart';

part 'parameter.mapper.dart';

@MappableEnum()
enum ParameterType {
  number,
  text,
  image;

  bool check(String value) {
    return switch (this) {
      ParameterType.text => true,
      ParameterType.image => Uuid.isValidUUID(fromString: value),
      ParameterType.number => int.tryParse(value) != null,
    };
  }
}

@MappableEnum()
enum CompareMode { indexed, compared, none }

@MappableClass()
class Parameter extends Entity with ParameterMappable {
  Parameter({
    super.id,
    required this.basicDleId,
    required this.title,
    required this.description,
    required this.type,
    required this.compareMode,
    required this.isReverseCompared,
    required this.allowsMultipleValues,
    required this.isSelectable,
    required this.isHidden,
    required this.updatedAt,
    required this.createdAt,
  });

  Parameter.create({
    required this.title,
    required this.type,
    required this.basicDleId,
    this.description = '',
    this.isSelectable = false,
    this.isHidden = false,
    this.isReverseCompared = false,
    this.compareMode = CompareMode.none,
    this.allowsMultipleValues = false,
  }) : updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String basicDleId;
  final String title;
  final String description;

  final ParameterType type;
  final CompareMode compareMode;

  final bool isReverseCompared;
  final bool allowsMultipleValues;
  final bool isSelectable;
  final bool isHidden;

  final DateTime updatedAt;
  final DateTime createdAt;

  Parameter edit({
    bool? isHidden,
    bool? allowsMultipleValues,
    bool? isReverseCompared,
    CompareMode? compareMode,
    String? title,
    String? description,
  }) {
    return copyWith(
      title: title,
      description: description,
      compareMode: compareMode,
      isReverseCompared: isReverseCompared,
      allowsMultipleValues: allowsMultipleValues,
      isHidden: isHidden,
      updatedAt: DateTime.now(),
    );
  }
}
