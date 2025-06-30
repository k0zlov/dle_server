import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class CharacterParametersUpdatedEvent extends DomainEvent {
  CharacterParametersUpdatedEvent({
    required this.dle,
    required this.changedCharacterParameters,
    this.isDeletionUpdate = false,
  });

  final bool isDeletionUpdate;
  final Dle dle;

  final List<CharacterParameter> changedCharacterParameters;
}
