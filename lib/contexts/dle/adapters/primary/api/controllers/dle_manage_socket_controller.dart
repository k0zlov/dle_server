import 'dart:convert';

import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_socket_dto/manage_dle_socket_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/get_user_dle_use_case/get_user_dle_use_case.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/dle_updated.dart';
import 'package:dle_server/contexts/dle/domain/events/editor_left.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/items_dto.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class DleManageSocketController with WebSocketManager {
  DleManageSocketController({
    required this.mapper,
    @dleContext required this.eventBus,
    required this.getUserDleUseCase,
  });

  final DleExceptionsMapper mapper;
  final GetUserDleUseCase getUserDleUseCase;
  final DomainEventBus eventBus;

  @PostConstruct()
  void init() {
    eventBus
      ..subscribe<EditorLeftEvent>((event) {
        final List<ManageDleDto> dleDtoList = [
          ManageDleDto.fromEntity(event.dle),
        ];

        send(
          userId: event.editorUserId,
          data: ManageDleSocketDto(
            type: ManageDleSocketEventType.delete,
            dtoList: dleDtoList,
          ),
        );

        _sendForAllDleEditors(event.dle);
      })
      ..subscribe<DleUpdatedEvent>((event) {
        _sendForAllDleEditors(event.dle);
      });
  }

  void _sendForAllDleEditors(Dle dle) {
    final List<String> userIds = dle.editors.map((e) => e.userId).toList();

    final List<ManageDleDto> dleDtoList = [ManageDleDto.fromEntity(dle)];

    for (final String userId in userIds) {
      send(
        userId: userId,
        data: ManageDleSocketDto(
          type: ManageDleSocketEventType.update,
          dtoList: dleDtoList,
        ),
      );
    }
  }

  Future<Response> listenDleUpdates(Request req) async {
    return wsHandler(
      req,
      onConnection: (channel, _) async {
        final String userId = req.payload.userId;

        final GetUserDleParams params = GetUserDleParams(userId: userId);

        addChannel(userId, channel);

        try {
          final List<Dle> dleList = await getUserDleUseCase(params);
          send(
            userId: userId,
            data: ItemsDto(dleList.map(ManageDleDto.fromEntity)),
          );
        } catch (e) {
          channel.sink.addError(jsonEncode(mapper(e).toMap()));
        }
      },
    );
  }
}
