import 'dart:async';

import 'package:dle_server/bounded_contexts/auth/domain/events/user_registered.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';

class UserRegisteredListener extends DomainEventListener<UserRegistered> {
  @override
  FutureOr<void> call(UserRegistered event) {
    print('Domain event:${event.userId}');
  }
}
