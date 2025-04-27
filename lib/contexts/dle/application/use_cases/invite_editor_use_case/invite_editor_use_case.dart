import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_invitations_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_invitation/dle_invitation.dart';
import 'package:dle_server/kernel/application/integration_events/dle_invitation_sent.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'invite_editor_use_case.freezed.dart';

part 'invite_editor_use_case.g.dart';

@freezed
class InviteEditorParams with _$InviteEditorParams {
  const factory InviteEditorParams({
    required String inviterId,
    required String inviteeId,
    required String dleId,
  }) = _InviteEditorParams;

  factory InviteEditorParams.fromJson(Map<String, dynamic> json) =>
      _$InviteEditorParamsFromJson(json);
}

@lazySingleton
class InviteEditorUseCase implements UseCase<void, InviteEditorParams> {
  const InviteEditorUseCase({
    required this.repository,
    required this.invitationsRepository,
    required this.integrationEventBus,
  });

  final DleRepositoryPort repository;
  final DleInvitationsRepositoryPort invitationsRepository;
  final IntegrationEventBus integrationEventBus;

  @override
  Future<void> call(InviteEditorParams params) async {
    final Dle? foundDle = await repository.find(params.dleId);

    if (foundDle == null) {
      throw DleNotFoundException();
    }

    final DleEditor? editor = foundDle.editors.firstWhereOrNull(
      (e) => e.userId == params.inviterId,
    );

    if (editor == null) {
      throw EditorNotFoundException();
    }

    if (editor.role.isEditor) {
      throw EditorPermissionsException();
    }

    final List<DleInvitation> dleInvitations = await invitationsRepository
        .findAll(dleId: params.dleId);

    final DateTime now = DateTime.now();

    final DateTime oneHourAgo = now.subtract(const Duration(hours: 1));

    final int invitationsCount =
        dleInvitations
            .where(
              (invitation) =>
                  invitation.status.isPending &&
                  invitation.createdAt.isAfter(oneHourAgo),
            )
            .length;

    if (invitationsCount >= 3) {
      throw TooManyInvitesException();
    }

    final DateTime threeHoursAgo = now.subtract(const Duration(hours: 3));

    // Checking if user is already in DLE
    final DleEditor? targetEditor = foundDle.editors.firstWhereOrNull(
      (e) => e.userId == params.inviteeId,
    );

    final DleInvitation? foundInvitation = dleInvitations.firstWhereOrNull(
      (e) =>
          e.inviteeId == params.inviteeId &&
          e.createdAt.isAfter(threeHoursAgo) &&
          e.status.isPending,
    );

    if (foundInvitation != null || targetEditor != null) {
      throw UserAlreadyInvitedException();
    }

    final DleInvitation invitation = DleInvitation.create(
      dleId: params.dleId,
      inviterId: params.inviterId,
      inviteeId: params.inviteeId,
    );

    integrationEventBus.publish(
      DleInvitationSentIntegrationEvent(
        inviteeId: params.inviteeId,
        inviterId: params.inviterId,
        dleName: foundDle.title,
        token: invitation.id,
      ),
    );

    await invitationsRepository.save(invitation);
  }
}
