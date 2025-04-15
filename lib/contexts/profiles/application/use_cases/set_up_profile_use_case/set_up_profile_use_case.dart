import 'package:dle_server/contexts/profiles/application/exceptions/profiles_exceptions.dart';
import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/database/tables/uploads.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'set_up_profile_use_case.freezed.dart';

part 'set_up_profile_use_case.g.dart';

@freezed
class SetUpProfileParams with _$SetUpProfileParams {
  const factory SetUpProfileParams({
    required String userId,
    required String username,
    String? mimeType,
    List<int>? pictureBytes,
  }) = _SetUpProfileParams;

  factory SetUpProfileParams.fromJson(Map<String, dynamic> json) =>
      _$SetUpProfileParamsFromJson(json);
}

@lazySingleton
class SetUpProfileUseCase implements UseCase<Profile, SetUpProfileParams> {
  const SetUpProfileUseCase({
    required this.repository,
    required this.saveUploadUseCase,
  });

  final ProfilesRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;

  @override
  Future<Profile> call(SetUpProfileParams params) async {
    final Profile? profile = await repository.find(userId: params.userId);

    if (profile == null) {
      throw ProfileNotFoundException();
    }

    final Profile? profileWithUsername = await repository.find(
      username: params.username,
    );

    if (profileWithUsername != null) {
      throw UsernameIsNotAvailable();
    }

    String? pictureId;

    if (params.pictureBytes != null && params.mimeType != null) {
      final Upload upload = await saveUploadUseCase(
        SaveUploadParams(
          mimeType: params.mimeType!,
          bytes: params.pictureBytes!,
          userId: params.userId,
        ),
      );

      pictureId = upload.id;
    }

    final Profile setUpProfile = profile.setUp(
      username: params.username,
      pictureId: pictureId,
    );

    await repository.save(setUpProfile);
    return setUpProfile;
  }
}
