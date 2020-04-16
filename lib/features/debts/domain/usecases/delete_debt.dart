import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/params.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/debt_repository.dart';

class DeleteDebt implements UseCase<void, ParamsDebt> {
  final DebtRepository repository;

  DeleteDebt(this.repository);

  @override
  Future<Either<Failure, void>> call(
    ParamsDebt params,
  ) async {
    return await repository.deleteDebt(params.debt);
  }
}
