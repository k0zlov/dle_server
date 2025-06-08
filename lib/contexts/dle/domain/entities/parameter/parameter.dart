import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'parameter.mapper.dart';

@MappableEnum()
enum ParameterType { number, text, image }

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
    this.selectableValues = const <SelectableValue>[],
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
    this.selectableValues = const <SelectableValue>[],
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

  final List<SelectableValue> selectableValues;

  final DateTime updatedAt;
  final DateTime createdAt;

  Parameter edit({
    bool? isSelectable,
    bool? isHidden,
    bool? allowsMultipleValues,
    bool? isReverseCompared,
    CompareMode? compareMode,
    ParameterType? type,
    String? title,
    String? description,
    List<SelectableValue>? selectableValues,
  }) {
    List<SelectableValue> newSelectableValues =
        selectableValues ?? this.selectableValues;

    if ((isSelectable != null && !isSelectable) || type != this.type) {
      newSelectableValues = [];
    }

    return copyWith(
      title: title,
      description: description,
      compareMode: compareMode,
      allowsMultipleValues: allowsMultipleValues,
      isHidden: isHidden,
      type: type,
      selectableValues: newSelectableValues,
      isSelectable: isSelectable,
      updatedAt: DateTime.now(),
    );
  }
}
