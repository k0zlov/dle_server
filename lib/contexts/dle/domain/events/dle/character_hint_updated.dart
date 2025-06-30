import 'package:dle_server/contexts/dle/domain/entities/character_hint/character_hint.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class CharacterHintUpdatedEvent extends DomainEvent {
  CharacterHintUpdatedEvent({
    required this.dle,
    required this.changedCharacterHints,
    this.isDeletionUpdate = false,
  });

  final bool isDeletionUpdate;

  final Dle dle;
  final List<CharacterHint> changedCharacterHints;
}
