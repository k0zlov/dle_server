import 'dart:async';

import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_user_dle_use_case.freezed.dart';

part 'get_user_dle_use_case.g.dart';

@freezed
class GetUserDleParams with _$GetUserDleParams {
  const factory GetUserDleParams({required String userId}) = _GetUserDleParams;

  factory GetUserDleParams.fromJson(Map<String, dynamic> json) =>
      _$GetUserDleParamsFromJson(json);
}

@lazySingleton
class GetUserDleUseCase implements UseCase<List<Dle>, GetUserDleParams> {
  const GetUserDleUseCase({required this.repository});

  final DleRepositoryPort repository;

  @override
  Future<List<Dle>> call(GetUserDleParams params) {
    return repository.findUserDle(params.userId);
  }
}
