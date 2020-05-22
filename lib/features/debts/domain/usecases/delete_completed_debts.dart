import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';

class DeleteCompletedDebts {
  final DebtRepository repository;

  DeleteCompletedDebts(this.repository);

  Future<void> call() async {
    return await repository.deleteCompletedDebts();
  }
}
