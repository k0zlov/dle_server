import 'dart:async';

import 'package:dle_server/shared_kernel/application/integration_events/user_registered.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';

class UserRegisteredIntegrationListener
    extends IntegrationEventListener<UserRegisteredIntegrationEvent> {
  @override
  FutureOr<void> call(UserRegisteredIntegrationEvent event) {
    print('Integration event:${event.userId}');
  }
}
