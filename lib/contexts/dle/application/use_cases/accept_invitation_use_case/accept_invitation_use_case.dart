import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dle_server/contexts/dle/application/exceptions/dles_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_invitations_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_editor/dle_editor.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_invitation/dle_invitation.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'accept_invitation_use_case.freezed.dart';

part 'accept_invitation_use_case.g.dart';

@freezed
class AcceptInvitationParams with _$AcceptInvitationParams {
  const factory AcceptInvitationParams({
    required String userId,
    required String invitationId,
  }) = _AcceptInvitationParams;

  factory AcceptInvitationParams.fromJson(Map<String, dynamic> json) =>
      _$AcceptInvitationParamsFromJson(json);
}

@lazySingleton
class AcceptInvitationUseCase implements UseCase<Dle, AcceptInvitationParams> {
  const AcceptInvitationUseCase({
    required this.repository,
    required this.invitationsRepository,
  });

  final DleRepositoryPort repository;
  final DleInvitationsRepositoryPort invitationsRepository;

  @override
  Future<Dle> call(AcceptInvitationParams params) async {
    final DleInvitation? invitation = await invitationsRepository.find(
      params.invitationId,
    );

    if (invitation == null) {
      throw InvitationNotFoundException();
    }

    if (invitation.inviteeId != params.userId) {
      throw InvalidInvitationUserException();
    }

    final Dle? dle = await repository.find(invitation.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final DleEditor? targetEditor = dle.editors.firstWhereOrNull(
      (e) => e.userId == params.userId,
    );

    if (targetEditor != null || invitation.status.isAccepted) {
      throw UserAlreadyInvitedException();
    }

    if (invitation.status.isCanceled) {
      throw InvitationCanceledException();
    }

    final DleEditor editor = DleEditor.create(
      userId: invitation.inviteeId,
      dleId: dle.id,
    );

    final Dle dleWithEditor = dle.addEditor(editor);
    await repository.save(dleWithEditor);

    final DleInvitation acceptedInvitation = invitation.accept();
    await invitationsRepository.save(acceptedInvitation);

    return dleWithEditor;
  }
}
