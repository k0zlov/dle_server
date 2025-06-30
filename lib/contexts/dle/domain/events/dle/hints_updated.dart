import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/hint/hint.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class HintsUpdatedEvent extends DomainEvent {
  HintsUpdatedEvent({
    required this.dle,
    required this.changedHints,
    required this.changedCharacterHints,
    this.isDeletionUpdate = false,
  });

  final bool isDeletionUpdate;

  final Dle dle;
  final List<Hint> changedHints;
  final List<CharacterHint> changedCharacterHints;
}
