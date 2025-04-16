import 'dart:async';

import 'package:dle_server/contexts/profiles/application/exceptions/profiles_exceptions.dart';
import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/application/use_cases/delete_upload_use_case/delete_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/database/tables/uploads.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_use_case.freezed.dart';

part 'edit_profile_use_case.g.dart';

@freezed
class EditProfileParams with _$EditProfileParams {
  const factory EditProfileParams({
    required String userId,
    String? username,
    String? mimeType,
    List<int>? pictureBytes,
  }) = _EditProfileParams;

  factory EditProfileParams.fromJson(Map<String, dynamic> json) =>
      _$EditProfileParamsFromJson(json);
}

@lazySingleton
class EditProfileUseCase implements UseCase<Profile, EditProfileParams> {
  const EditProfileUseCase({
    required this.repository,
    required this.saveUploadUseCase,
    required this.deleteUploadUseCase,
  });

  final ProfilesRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;
  final DeleteUploadUseCase deleteUploadUseCase;

  @override
  Future<Profile> call(EditProfileParams params) async {
    final Profile? profile = await repository.find(userId: params.userId);

    if (profile == null) {
      throw ProfileNotFoundException();
    }

    String? pictureId;

    if (params.pictureBytes != null && params.mimeType != null) {
      try {
        final Upload upload = await saveUploadUseCase(
          SaveUploadParams(
            mimeType: params.mimeType!,
            bytes: params.pictureBytes!,
            userId: params.userId,
          ),
        );

        pictureId = upload.id;
      } catch (e) {
        throw CouldNotUploadPictureException();
      }
    }

    final Profile updatedProfile = profile.edit(
      username: params.username,
      pictureId: pictureId,
    );

    await repository.save(updatedProfile);

    if (pictureId != null && profile.pictureId != null) {
      unawaited(
        deleteUploadUseCase(DeleteUploadParams(uploadId: profile.pictureId!)),
      );
    }

    return updatedProfile;
  }
}
