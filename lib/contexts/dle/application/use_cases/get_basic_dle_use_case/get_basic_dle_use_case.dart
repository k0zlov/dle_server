import 'dart:async';

import 'package:dle_server/contexts/dle/application/exceptions/dle_exceptions.dart';
import 'package:dle_server/contexts/dle/application/ports/basic_dle_repository_port.dart';
import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_basic_dle_use_case.freezed.dart';

part 'get_basic_dle_use_case.g.dart';

@freezed
class GetBasicDleParams with _$GetBasicDleParams {
  const factory GetBasicDleParams({
    required String userId,
    required String dleId,
  }) = _GetBasicDleParams;

  factory GetBasicDleParams.fromJson(Map<String, dynamic> json) =>
      _$GetBasicDleParamsFromJson(json);
}

@lazySingleton
class GetBasicDleUseCase implements UseCase<BasicDle, GetBasicDleParams> {
  const GetBasicDleUseCase({
    required this.repository,
    required this.dleRepository,
  });

  final BasicDleRepositoryPort repository;
  final DleRepositoryPort dleRepository;

  @override
  Future<BasicDle> call(GetBasicDleParams params) async {
    final Dle? dle = await dleRepository.find(params.dleId);

    if (dle == null) {
      throw DleNotFoundException();
    }

    final BasicDle? basicDle = await repository.find(dleId: params.dleId);

    if (basicDle == null) {
      throw DleNotFoundException();
    }

    if (!dle.userCanManageDle(params.userId)) {
      throw EditorPermissionsException();
    }

    return basicDle;
  }
}
