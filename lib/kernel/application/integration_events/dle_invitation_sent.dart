import 'package:dle_server/kernel/domain/events/events.dart';

class DleInvitationSentIntegrationEvent extends IntegrationEvent {
  DleInvitationSentIntegrationEvent({
    required this.inviteeId,
    required this.inviterId,
    required this.dleName,
    required this.token,
  });

  final String inviteeId;
  final String inviterId;
  final String dleName;
  final String token;
}
