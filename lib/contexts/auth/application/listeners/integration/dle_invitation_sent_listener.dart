import 'dart:async';

import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/integration_events/dle_invitation_sent.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/letters/dle_invitation_letter.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DleInvitationSentListener
    extends IntegrationEventListener<DleInvitationSentIntegrationEvent> {
  DleInvitationSentListener({
    required this.repository,
    required this.mailService,
    @Named('acceptInvitationUrl') required this.acceptInvitationUrl,
  });

  final UsersRepositoryPort repository;
  final MailService mailService;
  final String acceptInvitationUrl;

  @override
  FutureOr<void> call(DleInvitationSentIntegrationEvent event) async {
    final User? user = await repository.findUser(id: event.inviteeId);

    if (user == null) return;

    await mailService.send(
      letter: DleInvitationLetter(
        recipients: [user.email],
        link: '$acceptInvitationUrl${event.token}',
        dleName: event.dleName,
      ),
    );
  }
}
