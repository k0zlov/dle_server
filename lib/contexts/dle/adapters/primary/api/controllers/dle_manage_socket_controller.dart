import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/get_user_dle_use_case/get_user_dle_use_case.dart';
import 'package:dle_server/contexts/dle/dle_dependency_container.dart';
import 'package:dle_server/contexts/dle/domain/events/dle/editor_left.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/infrastructure/web_socket_manager/web_socket_manager.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DleManageSocketController {
  DleManageSocketController({
    required this.mapper,
    required this.wsManager,
    @dleContext required this.eventBus,
    required this.getUserDleUseCase,
  });

  final DleExceptionsMapper mapper;
  final GetUserDleUseCase getUserDleUseCase;
  final DomainEventBus eventBus;
  final WebSocketManager wsManager;

  static const String dleManageId = 'dle_manage';

  @PostConstruct()
  void init() {
    eventBus.subscribe<EditorLeftEvent>((event) {});
  }
}
