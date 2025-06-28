import 'package:dle_server/contexts/dle/domain/entities/basic_dle/basic_dle.dart';

abstract interface class BasicDleRepositoryPort {
  Future<void> save(BasicDle dle);

  Future<BasicDle?> find({String? basicDleId, String? dleId});
}
