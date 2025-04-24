import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class DleUpdatedEvent extends DomainEvent {
  DleUpdatedEvent({required this.dle});

  final Dle dle;
}
