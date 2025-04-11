import 'package:dle_server/kernel/domain/events/events.dart';

class UserRegisteredEvent extends DomainEvent {
  UserRegisteredEvent({required this.userId, required this.userEmail});

  final String userId;
  final String userEmail;
}
