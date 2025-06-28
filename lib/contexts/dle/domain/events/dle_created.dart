import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class DleCreatedEvent extends DomainEvent {
  DleCreatedEvent({required this.dle});

  final Dle dle;
}
