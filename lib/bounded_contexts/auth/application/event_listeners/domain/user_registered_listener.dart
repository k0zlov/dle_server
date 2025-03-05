import 'dart:async';

import 'package:dle_server/bounded_contexts/auth/domain/events/user_registered.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';

class UserRegisteredDomainListener
    implements DomainEventListener<UserRegistered> {
  @override
  Type get eventType => UserRegistered;

  @override
  FutureOr<void> call(UserRegistered event) {
    print('INCOMING EVENT');
    print(event.id);
    print(event.occurredOn);
  }
}
