import 'package:dle_server/contexts/profiles/adapters/primary/api/dto/profile_dto/profile_dto.dart';
import 'package:dle_server/contexts/profiles/adapters/primary/api/exceptions/profiles_exceptions_mapper.dart';
import 'package:dle_server/contexts/profiles/application/use_cases/edit_profile_use_case/edit_profile_use_case.dart';
import 'package:dle_server/contexts/profiles/application/use_cases/get_current_profile_use_case/get_profile_use_case.dart';
import 'package:dle_server/contexts/profiles/application/use_cases/set_up_profile_use_case/set_up_profile_use_case.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/infrastructure/extensions/form_data_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class ProfilesRestController {
  const ProfilesRestController({
    required this.mapper,
    required this.setUpProfileUseCase,
    required this.getProfileUseCase,
    required this.editProfileUseCase,
  });

  final SetUpProfileUseCase setUpProfileUseCase;
  final GetProfileUseCase getProfileUseCase;
  final EditProfileUseCase editProfileUseCase;
  final ProfilesExceptionsMapper mapper;

  Future<Response> setUp(Request req) async {
    final FormData formData = await req.formData();

    final Map<String, dynamic> json = formData.getJson();

    final UploadedFile? picture = formData.files['picture'];

    final List<int>? pictureBytes = await picture?.readAsBytes();

    final SetUpProfileParams params = SetUpProfileParams.fromJson(
      json.copyWith({
        'userId': req.payload.userId,
        'pictureBytes': pictureBytes,
        'mimeType': picture?.contentType.mimeType,
      }),
    );

    try {
      final Profile profile = await setUpProfileUseCase(params);
      return Response.json(body: ProfileDto.fromEntity(profile));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> getCurrentProfile(Request req) async {
    final GetProfileParams params = GetProfileParams(
      userId: req.payload.userId,
    );

    try {
      final Profile profile = await getProfileUseCase(params);
      return Response.json(body: ProfileDto.fromEntity(profile));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> getProfile(Request req) async {
    final GetProfileParams params = GetProfileParams(
      userId: req.uri.pathSegments.last,
    );

    try {
      final Profile profile = await getProfileUseCase(params);
      return Response.json(body: ProfileDto.fromEntity(profile));
    } catch (e) {
      throw mapper(e);
    }
  }

  Future<Response> editProfile(Request req) async {
    final FormData formData = await req.formData();

    final Map<String, dynamic> json = formData.getJson();

    final UploadedFile? picture = formData.files['picture'];

    final List<int>? pictureBytes = await picture?.readAsBytes();

    final EditProfileParams params = EditProfileParams.fromJson(
      json.copyWith({
        'userId': req.payload.userId,
        'pictureBytes': pictureBytes,
        'mimeType': picture?.contentType.mimeType,
      }),
    );

    try {
      final Profile profile = await editProfileUseCase(params);
      return Response.json(body: ProfileDto.fromEntity(profile));
    } catch (e) {
      throw mapper(e);
    }
  }
}
