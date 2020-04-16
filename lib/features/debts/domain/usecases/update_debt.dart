import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/params.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/debt_repository.dart';

class UpdateDebt implements UseCase<void, ParamsDebt> {
  final DebtRepository repository;

  UpdateDebt(this.repository);

  Future<Either<Failure, void>> call(
    ParamsDebt debt,
  ) async {
    return await repository.updateDebt(debt.debt);
  }
}
