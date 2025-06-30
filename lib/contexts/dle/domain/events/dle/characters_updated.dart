import 'package:dle_server/contexts/dle/domain/entities/character/character.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class CharactersUpdatedEvent extends DomainEvent {
  CharactersUpdatedEvent({
    required this.dle,
    required this.changedCharacters,
    this.isDeletionUpdate = false,
  });

  final bool isDeletionUpdate;

  final Dle dle;
  final List<Character> changedCharacters;
}
