import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/params.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/debt.dart';
import '../repositories/debt_repository.dart';

class GetDebt implements UseCase<Debt, ParamsId> {
  final DebtRepository repository;

  GetDebt(this.repository);

  @override
  Future<Either<Failure, Debt>> call(
    ParamsId params,
  ) async {
    return await repository.getDebt(params.id);
  }
}
