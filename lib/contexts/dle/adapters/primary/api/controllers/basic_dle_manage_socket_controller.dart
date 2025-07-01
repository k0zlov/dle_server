import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_basic_dle_dto/manage_basic_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_character_parameter_dto/manage_character_parameter_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_parameter_dto/manage_parameter_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_selectable_value_dto/manage_selectable_value_dto.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/basic_dle_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/character_parameters_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/parameters_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/selectable_values_updated.dart';
import 'package:dle_server/contexts/dle/infrastructure/extensions/socket/editor_notification_mixin.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class BasicDleManageSocketController with EditorNotificationMixin {
  BasicDleManageSocketController({
    required this.wsManager,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final WebSocketManager wsManager;

  @PostConstruct()
  void init() {
    eventBus
      ..subscribe<BasicDleUpdatedEvent>((event) {
        sendUpdateToAllEditors(
          eventName: event.name,
          editors: event.dle.editors,
          isDeletion: false,
          data: {
            'dleId': event.dle.id,
            'basicDle': ManageBasicDleDto.fromEntity(event.basicDle),
          },
        );
      })
      ..subscribe<CharacterParametersUpdatedEvent>((event) {
        final List<ManageCharacterParameterDto> dto =
            event.changedCharacterParameters
                .map(ManageCharacterParameterDto.fromEntity)
                .toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {'dleId': event.dle.id, 'characterParameters': dto},
        );
      })
      ..subscribe<ParametersUpdatedEvent>((event) {
        final List<ManageParameterDto> paramsDto =
            event.changedParameters.map(ManageParameterDto.fromEntity).toList();

        final List<ManageCharacterParameterDto> characterParamsDto =
            event.changedCharacterParameters
                .map(ManageCharacterParameterDto.fromEntity)
                .toList();

        final List<ManageSelectableValueDto> selectablesDto =
            event.changedSelectableValues
                .map(ManageSelectableValueDto.fromEntity)
                .toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {
            'dleId': event.dle.id,
            'characterParameters': characterParamsDto,
            'parameters': paramsDto,
            'selectableValues': selectablesDto,
          },
        );
      })
      ..subscribe<SelectableValuesUpdatedEvent>((event) {
        final List<ManageSelectableValueDto> dto =
            event.changedSelectableValues
                .map(ManageSelectableValueDto.fromEntity)
                .toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {'dleId': event.dle.id, 'selectableValues': dto},
        );
      });
  }
}
