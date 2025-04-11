import 'package:dle_server/kernel/domain/events/events.dart';

class UserRegisteredEvent extends DomainEvent {
  UserRegisteredEvent({required this.userId});

  final String userId;
}
