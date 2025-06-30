import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class BasicDleUpdatedEvent extends DomainEvent {
  BasicDleUpdatedEvent({required this.dle, required this.basicDle});

  final Dle dle;
  final BasicDle basicDle;
}
