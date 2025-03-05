import 'package:dle_server/shared_kernel/domain/events/events.dart';

class UserRegisteredIntegrationEvent extends IntegrationEvent {
  UserRegisteredIntegrationEvent({required this.userId});

  final String userId;
}
