import 'package:dart_mappable/dart_mappable.dart';
import 'package:dle_server/contexts/dle/domain/exceptions/dle_exceptions.dart';
import 'package:dle_server/kernel/domain/entities/entity.dart';

part 'dle_invitation.mapper.dart';

@MappableEnum()
enum DleInvitationStatus {
  accepted,
  pending,
  canceled;

  bool get isAccepted => this == accepted;

  bool get isPending => this == pending;

  bool get isCanceled => this == canceled;
}

@MappableClass()
class DleInvitation extends Entity with DleInvitationMappable {
  DleInvitation({
    super.id,
    required this.dleId,
    required this.inviterId,
    required this.inviteeId,
    required this.status,
    required this.updatedAt,
    required this.createdAt,
  });

  DleInvitation.create({
    required this.dleId,
    required this.inviterId,
    required this.inviteeId,
  }) : status = DleInvitationStatus.pending,
       updatedAt = DateTime.now(),
       createdAt = DateTime.now();

  final String dleId;

  final String inviterId;
  final String inviteeId;

  final DleInvitationStatus status;

  final DateTime updatedAt;
  final DateTime createdAt;

  DleInvitation cancel() {
    if (status.isCanceled) {
      throw InvitationCanceledException();
    }

    if (status.isAccepted) {
      throw InvitationAlreadyAcceptedException();
    }

    return copyWith(
      status: DleInvitationStatus.canceled,
      updatedAt: DateTime.now(),
    );
  }

  DleInvitation accept() {
    if (status.isAccepted) {
      throw InvitationAlreadyAcceptedException();
    }

    if (status.isCanceled) {
      throw InvitationCanceledException();
    }

    final DateTime threeHoursAgo = DateTime.now().subtract(
      const Duration(hours: 3),
    );

    if (!createdAt.isAfter(threeHoursAgo)) {
      throw InvitationExpiredException();
    }

    return copyWith(
      status: DleInvitationStatus.accepted,
      updatedAt: DateTime.now(),
    );
  }
}
