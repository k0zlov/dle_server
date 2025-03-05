import 'package:dle_server/shared_kernel/domain/events/events.dart';

class UserRegistered extends DomainEvent {
  UserRegistered({required this.id});

  final String id;
}
