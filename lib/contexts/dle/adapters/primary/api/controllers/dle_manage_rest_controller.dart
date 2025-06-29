import 'package:dle_server/contexts/dle/adapters/primary/api/dto/manage_dle_dto/manage_dle_dto.dart';
import 'package:dle_server/contexts/dle/adapters/primary/api/exceptions/dle_exceptions_mapper.dart';
import 'package:dle_server/contexts/dle/application/use_cases/accept_invitation_use_case/accept_invitation_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/create_dle_use_case/create_dle_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_dle_use_case/edit_dle_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/edit_editor_use_case/edit_editor_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/get_user_dle_use_case/get_user_dle_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/invite_editor_use_case/invite_editor_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/kick_editor_use_case/kick_editor_use_case.dart';
import 'package:dle_server/contexts/dle/application/use_cases/leave_dle_use_case/leave_dle_use_case.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/items_dto.dart';
import 'package:dle_server/kernel/adapters/primary/api/dto/success_dto.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class DleManageRestController {
  const DleManageRestController({
    required this.mapper,
    required this.createDleUseCase,
    required this.getUserDleUseCase,
    required this.editDleUseCase,
    required this.inviteEditorUseCase,
    required this.acceptInvitationUseCase,
    required this.kickEditorUseCase,
    required this.editEditorUseCase,
    required this.leaveDleUseCase,
  });

  final DleExceptionsMapper mapper;
  final CreateDleUseCase createDleUseCase;
  final GetUserDleUseCase getUserDleUseCase;
  final EditDleUseCase editDleUseCase;
  final InviteEditorUseCase inviteEditorUseCase;
  final AcceptInvitationUseCase acceptInvitationUseCase;
  final KickEditorUseCase kickEditorUseCase;
  final EditEditorUseCase editEditorUseCase;
  final LeaveDleUseCase leaveDleUseCase;

  Future<Response> create(Request req) async {
    final CreateDleParams params = CreateDleParams.fromJson(
      req.data.copyWith({'userId': req.payload.userId}),
    );
    try {
      final Dle dle = await createDleUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> getUserDle(Request req) async {
    final GetUserDleParams params = GetUserDleParams(
      userId: req.payload.userId,
    );

    try {
      final List<Dle> dleList = await getUserDleUseCase(params);
      return Response.json(
        body: ItemsDto([...dleList.map(ManageDleDto.fromEntity)]),
      );
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> editDle(Request req) async {
    final String dleId = req.url.pathSegments.first;

    final EditDleParams params = EditDleParams.fromJson(
      req.data.copyWith({'dleId': dleId, 'userId': req.payload.userId}),
    );

    try {
      final Dle dle = await editDleUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> inviteEditor(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String userId = req.payload.userId;
    final String inviteeId = req.data['userId'] as String;

    final InviteEditorParams params = InviteEditorParams(
      inviterId: userId,
      dleId: dleId,
      inviteeId: inviteeId,
    );

    try {
      await inviteEditorUseCase(params);
      return Response.json(body: const SuccessDto());
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> acceptInvitation(Request req) async {
    final String invitationId = req.url.pathSegments[1];
    final String userId = req.payload.userId;

    final AcceptInvitationParams params = AcceptInvitationParams(
      userId: userId,
      invitationId: invitationId,
    );

    try {
      final Dle dle = await acceptInvitationUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> kickEditor(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String editorUserId = req.url.pathSegments[2];
    final String userId = req.payload.userId;

    final KickEditorParams params = KickEditorParams(
      dleId: dleId,
      userId: userId,
      editorUserId: editorUserId,
    );

    try {
      final Dle dle = await kickEditorUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> editEditor(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String editorUserId = req.url.pathSegments[2];
    final String userId = req.payload.userId;

    final EditEditorParams params = EditEditorParams.fromJson(
      req.data.copyWith({
        'dleId': dleId,
        'userId': userId,
        'editorUserId': editorUserId,
      }),
    );

    try {
      final Dle dle = await editEditorUseCase(params);
      return Response.json(body: ManageDleDto.fromEntity(dle));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> leaveDle(Request req) async {
    final String dleId = req.url.pathSegments.first;
    final String userId = req.payload.userId;

    final LeaveDleParams params = LeaveDleParams(userId: userId, dleId: dleId);

    try {
      await leaveDleUseCase(params);
      return Response.json(body: const SuccessDto());
    } catch (e) {
      throw mapper(e);
    }
  }
}
