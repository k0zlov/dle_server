import 'dart:async';

import 'package:dle_server/shared_kernel/domain/events/events.dart';
import 'package:dle_server/shared_kernel/infrastructure/events/event_listener.dart';

class SomeEvent extends IntegrationEvent {
  SomeEvent({required this.id});

  final String id;
}

class SomeListener implements IntegrationEventListener<SomeEvent> {
  @override
  Type get eventType => SomeEvent;

  @override
  FutureOr<void> call(SomeEvent event) {
    print('handling event...');
    print('Data: ${event.id}');
  }
}
