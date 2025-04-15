import 'dart:convert';

import 'package:dle_server/contexts/profiles/adapters/primary/api/dto/profile_dto/profile_dto.dart';
import 'package:dle_server/contexts/profiles/adapters/primary/api/exceptions/profiles_exceptions_mapper.dart';
import 'package:dle_server/contexts/profiles/application/use_cases/set_up_profile_use_case/set_up_profile_use_case.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/infrastructure/extensions/map_extension.dart';
import 'package:dle_server/kernel/infrastructure/extensions/request_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class ProfilesRestController {
  const ProfilesRestController({
    required this.setUpProfileUseCase,
    required this.mapper,
  });

  final SetUpProfileUseCase setUpProfileUseCase;
  final ProfilesExceptionsMapper mapper;

  Future<Response> setUp(Request req) async {
    final FormData formData = await req.formData();

    Map<String, dynamic> json;

    try {
      final String raw = formData.fields['json']!;
      json = jsonDecode(raw) as Map<String, dynamic>;
    } catch (e) {
      throw const ApiException.badRequest(
        'Json field was not provided inside form-data',
      );
    }

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
}
