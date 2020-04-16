import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
