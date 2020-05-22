import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/debt.dart';

abstract class DebtRepository {
  Future<Either<Failure, List<Debt>>> getAllDebts();
  /* wird nur in tests verwendet */ Future<Either<Failure, Debt>> getDebt(int id);
  Future<Either<Failure, void>> addDebt(Debt debt);
  Future<Either<Failure, void>> updateDebt(Debt debt);
  Future<Either<Failure, void>> deleteDebt(Debt debt);
  Future<Either<Failure, void>> deleteAllDebts();
  Future<void> deleteCompletedDebts();
}
