import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/core/usecases/usecase.dart';

import '../../../../core/error/failures.dart';
import '../entities/debt.dart';
import '../repositories/debt_repository.dart';

class GetAllDebts implements UseCase<List<Debt>, NoParams> {
  final DebtRepository repository;

  GetAllDebts(this.repository);

  Future<Either<Failure, List<Debt>>> call(
    NoParams params,
  ) async {
    return await repository.getAllDebts();
  }
}
