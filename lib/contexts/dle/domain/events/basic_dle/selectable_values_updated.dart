import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/selectable_value/selectable_value.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class SelectableValuesUpdatedEvent extends DomainEvent {
  SelectableValuesUpdatedEvent({
    required this.dle,
    required this.changedSelectableValues,
    this.isDeletionUpdate = false,
  });

  final bool isDeletionUpdate;
  final Dle dle;
  final List<SelectableValue> changedSelectableValues;
}
