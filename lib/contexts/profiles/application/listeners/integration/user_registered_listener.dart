import 'dart:async';

import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/application/integration_events/user_registered.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserRegisteredProfileListener
    extends IntegrationEventListener<UserRegisteredIntegrationEvent> {
  UserRegisteredProfileListener({required this.repository});

  final ProfilesRepositoryPort repository;

  @override
  FutureOr<void> call(UserRegisteredIntegrationEvent event) async {
    final Profile profile = Profile.create(userId: event.userId);
    await repository.save(profile);
  }
}
