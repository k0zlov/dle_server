import 'package:dle_server/contexts/profiles/application/exceptions/profiles_exceptions.dart';
import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_current_profile_use_case.freezed.dart';

part 'get_current_profile_use_case.g.dart';

@freezed
class GetCurrentProfileParams with _$GetCurrentProfileParams {
  const factory GetCurrentProfileParams({required String userId}) =
      _GetCurrentProfileParams;

  factory GetCurrentProfileParams.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentProfileParamsFromJson(json);
}

@lazySingleton
class GetCurrentProfileUseCase
    implements UseCase<Profile, GetCurrentProfileParams> {
  const GetCurrentProfileUseCase({
    required this.repository,
    required this.saveUploadUseCase,
  });

  final ProfilesRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;

  @override
  Future<Profile> call(GetCurrentProfileParams params) async {
    final Profile? profile = await repository.find(userId: params.userId);

    if (profile == null) {
      throw ProfileNotFoundException();
    }

    return profile;
  }
}
