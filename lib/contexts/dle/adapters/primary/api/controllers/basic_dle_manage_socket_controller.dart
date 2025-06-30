import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/get_user_dle_use_case/get_user_dle_use_case.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/events/basic_dle/basic_dle_updated.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BasicDleManageSocketController {
  BasicDleManageSocketController({
    required this.mapper,
    @dleManage required this.wsManager,
    @dleContext required this.eventBus,
    required this.getUserDleUseCase,
  });

  final DleExceptionsMapper mapper;
  final GetUserDleUseCase getUserDleUseCase;
  final DomainEventBus eventBus;
  final WebSocketManager wsManager;

  static const String dleManageId = 'basic_dle_manage';

  @PostConstruct()
  void init() {
    eventBus.subscribe<BasicDleUpdatedEvent>((event) {
      _sendForAllDleEditors(event.dle, event.basicDle);
    });
  }

  void _sendForAllDleEditors(Dle dle, BasicDle basicDle) {
    // final List<String> userIds = dle.editors.map((e) => e.userId).toList();

    // final List<ManageBasicDleDto> dleDtoList = [
    //   ManageBasicDleDto.fromEntity(basicDle),
    // ];
    //
    // for (final String userId in userIds) {
    //   // wsManager.send(
    //   //   id: dleManageId,
    //   //   userId: userId,
    //   //   type: SocketEventType.update,
    //   //   data: dleDtoList,
    //   // );
    // }
  }
}
