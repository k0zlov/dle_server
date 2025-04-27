// import 'dart:async';
//
// import 'package:dle_server/contexts/dle/application/ports/dle_repository_port.dart';
// import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
// import 'package:dle_server/kernel/application/use_cases/use_case.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
//
// part 'create_hint_use_case.freezed.dart';
//
// part 'create_hint_use_case.g.dart';
//
// @freezed
// class CreateHintParams with _$CreateHintParams {
//   const factory CreateHintParams({required String userId}) = _CreateHintParams;
//
//   factory CreateHintParams.fromJson(Map<String, dynamic> json) =>
//       _$CreateHintParamsFromJson(json);
// }
//
// @lazySingleton
// class CreateHintUseCase implements UseCase<Dle, CreateHintParams> {
//   const CreateHintUseCase({required this.repository});
//
//   final DleRepositoryPort repository;
//
//   @override
//   Future<Dle> call(CreateHintParams params) async {}
// }
