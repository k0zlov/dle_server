import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class EditorLeftEvent extends DomainEvent {
  EditorLeftEvent({required this.dle, required this.editorUserId});

  final Dle dle;
  final String editorUserId;
}
