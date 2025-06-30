import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class DleEditorsUpdatedEvent extends DomainEvent {
  DleEditorsUpdatedEvent({required this.dle, required this.changedEditors});

  final Dle dle;
  final List<DleEditor> changedEditors;
}
