import 'package:dle_server/contexts/dle/adapters/primary/api/dto/dle_asset_dto/dle_asset_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/dle_editor_dto/dle_editor_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_character_dto/manage_character_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_character_hint_dto/manage_character_hint_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_hint_dto/manage_hint_dto.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/character_hint_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/characters_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/dle_assets_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/dle_editors_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/dle_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/editor_left.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/hints_updated.dart';
import 'package:dle_server/contexts/dle/infrastructure/extensions/socket/editor_notification_mixin.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/socket_message.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class DleManageSocketController with EditorNotificationMixin {
  DleManageSocketController({
    required this.wsManager,
    @dleContext required this.eventBus,
  });

  final DomainEventBus eventBus;
  final WebSocketManager wsManager;

  @PostConstruct()
  void init() {
    eventBus
      ..subscribe<CharacterHintUpdatedEvent>((event) {
        final List<ManageCharacterHintDto> dto =
            event.changedCharacterHints
                .map(ManageCharacterHintDto.fromEntity)
                .toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {'dleId': event.dle.id, 'characterHints': dto},
        );
      })
      ..subscribe<CharactersUpdatedEvent>((event) {
        final List<ManageCharacterDto> dto =
            event.changedCharacters.map(ManageCharacterDto.fromEntity).toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {'dleId': event.dle.id, 'characters': dto},
        );
      })
      ..subscribe<DleAssetsUpdatedEvent>((event) {
        final List<DleAssetDto> dto =
            event.changedAssets.map(DleAssetDto.fromEntity).toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {'dleId': event.dle.id, 'assets': dto},
        );
      })
      ..subscribe<DleEditorsUpdatedEvent>((event) {
        final List<DleEditorDto> dto =
            event.changedEditors.map(DleEditorDto.fromEntity).toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: false,
          editors: event.dle.editors,
          data: {'dleId': event.dle.id, 'editors': dto},
        );
      })
      ..subscribe<DleUpdatedEvent>((event) {
        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: false,
          editors: event.dle.editors,
          data: {
            'dleId': event.dle.id,
            'dle': ManageDleDto.fromEntity(event.dle),
          },
        );
      })
      ..subscribe<EditorLeftEvent>((event) {
        final Map<String, dynamic> data = {
          'dleId': event.dle.id,
          'userId': event.editorUserId,
        };

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: true,
          editors: event.dle.editors,
          data: data,
        );

        wsManager.send(
          userId: event.editorUserId,
          message: SocketMessage(
            event: event.name,
            action: SocketEventAction.delete,
            data: data,
          ),
        );
      })
      ..subscribe<HintsUpdatedEvent>((event) {
        final List<ManageHintDto> hintsDto =
            event.changedHints.map(ManageHintDto.fromEntity).toList();

        final List<ManageCharacterHintDto> characterHintsDto =
            event.changedCharacterHints
                .map(ManageCharacterHintDto.fromEntity)
                .toList();

        sendUpdateToAllEditors(
          eventName: event.name,
          isDeletion: event.isDeletionUpdate,
          editors: event.dle.editors,
          data: {
            'dleId': event.dle.id,
            'hints': hintsDto,
            'characterHints': characterHintsDto,
          },
        );
      });
  }
}
