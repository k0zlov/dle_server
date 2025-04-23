import 'package:dle_server/contexts/dle/application/ports/dle_invitations_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_invitation/dle_invitation.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/extensions/table_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DleInvitationsRepositoryPort)
class DleInvitationsRepositoryDrift implements DleInvitationsRepositoryPort {
  const DleInvitationsRepositoryDrift({required this.db});

  final Database db;

  Insertable<DleInvitation> mapInvitation(DleInvitation inv) {
    return DleInvitationsCompanion(
      id: Value(inv.id),
      dleId: Value(inv.dleId),
      inviteeId: Value(inv.inviteeId),
      inviterId: Value(inv.inviterId),
      status: Value(inv.status),
      updatedAt: Value(inv.updatedAt),
      createdAt: Value(inv.createdAt),
    );
  }

  @override
  Future<DleInvitation?> find(String invitationId) {
    return db.dleInvitations.getOrNull(
      (tbl) => tbl.id.equals(UuidValue.fromString(invitationId)),
    );
  }

  @override
  Future<void> save(DleInvitation invitation) {
    return db.dleInvitations.insertOnConflictUpdate(mapInvitation(invitation));
  }

  @override
  Future<List<DleInvitation>> findAll({
    String? dleId,
    String? inviteeId,
    String? inviterId,
  }) {
    assert(
      dleId != null || inviteeId != null || inviterId != null,
      'One of: "dleId", "inviteeId", "inviterId" must be provided; all cannot be null.',
    );

    return db.dleInvitations.getWhere((tbl) {
      Expression<bool>? expression;

      if (dleId != null) {
        final Expression<bool> dleExp = tbl.dleId.equals(
          UuidValue.fromString(dleId),
        );

        expression = dleExp;
      }

      if (inviteeId != null) {
        final Expression<bool> inviteeExp = tbl.inviteeId.equals(
          UuidValue.fromString(inviteeId),
        );

        expression = expression == null ? inviteeExp : expression & inviteeExp;
      }

      if (inviterId != null) {
        final Expression<bool> inviterExp = tbl.inviterId.equals(
          UuidValue.fromString(inviterId),
        );

        expression = expression == null ? inviterExp : expression & inviterExp;
      }

      return expression!;
    });
  }
}
