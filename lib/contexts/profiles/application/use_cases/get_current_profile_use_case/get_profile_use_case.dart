import 'package:dle_server/contexts/profiles/application/exceptions/profiles_exceptions.dart';
import 'package:dle_server/contexts/profiles/application/ports/profiles_repository_port.dart';
import 'package:dle_server/contexts/profiles/domain/entities/profile/profile.dart';
import 'package:dle_server/kernel/application/use_cases/save_upload_use_case/save_upload_use_case.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_profile_use_case.freezed.dart';

part 'get_profile_use_case.g.dart';

@freezed
class GetProfileParams with _$GetProfileParams {
  const factory GetProfileParams({required String userId}) = _GetProfileParams;

  factory GetProfileParams.fromJson(Map<String, dynamic> json) =>
      _$GetProfileParamsFromJson(json);
}

@lazySingleton
class GetProfileUseCase implements UseCase<Profile, GetProfileParams> {
  const GetProfileUseCase({
    required this.repository,
    required this.saveUploadUseCase,
  });

  final ProfilesRepositoryPort repository;
  final SaveUploadUseCase saveUploadUseCase;

  @override
  Future<Profile> call(GetProfileParams params) async {
    final Profile? profile = await repository.find(userId: params.userId);

    if (profile == null) {
      throw ProfileNotFoundException();
    }

    return profile;
  }
}
