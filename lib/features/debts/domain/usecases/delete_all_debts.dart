import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/error/failures.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/core/usecases/usecase.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';

class DeleteAllDebts implements UseCase<void, NoParams>{
  final DebtRepository repository;

  DeleteAllDebts(this.repository);

  Future<Either<Failure, void>> call(NoParams noParams) async {
    return await repository.deleteAllDebts();
  }
}
