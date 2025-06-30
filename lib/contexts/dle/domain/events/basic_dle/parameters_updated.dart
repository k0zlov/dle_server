import 'package:dle_server/contexts/dle/domain/entities/character_parameter/character_parameter.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/parameter/parameter.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class ParametersUpdatedEvent extends DomainEvent {
  ParametersUpdatedEvent({
    required this.dle,
    required this.changedParameters,
    required this.changedCharacterParameters,
    this.isDeletionUpdate = false,
  });

  final bool isDeletionUpdate;
  final Dle dle;
  final List<Parameter> changedParameters;
  final List<CharacterParameter> changedCharacterParameters;
}
