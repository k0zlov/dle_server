import 'package:dartz/dartz.dart';

class NoParams {}

abstract class UseCase<F, T, P> {
  Future<Either<F, T>> call(P params);
}
