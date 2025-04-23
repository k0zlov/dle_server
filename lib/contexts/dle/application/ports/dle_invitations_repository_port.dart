import 'package:dle_server/contexts/dle/domain/entities/dle_invitation/dle_invitation.dart';

abstract interface class DleInvitationsRepositoryPort {
  Future<void> save(DleInvitation invitation);

  Future<DleInvitation?> find(String invitationId);

  Future<List<DleInvitation>> findAll({
    String? dleId,
    String? inviteeId,
    String? inviterId,
  });
}
