import 'package:debt_collector_3/database/moor_database/moor_database.dart'
    as prefix0;
import 'package:debt_collector_3/database/moor_database/moor_database.dart';
import 'package:debt_collector_3/features/debts/data/models/debt_model.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart'
    as prefix1;

DebtModel toDebtModel(prefix1.Debt debt) {
  DebtModel debtModel = DebtModel(
    id: debt.id,
    name: debt.name,
    debt: debt.debt,
    description: debt.description,
    debtStartDate: debt.debtStartDate,
    debtDueDate: debt.debtDueDate,
    priority: debt.priority,
    iOwe: debt.iOwe,
    completed: debt.completed,
  );

  return debtModel;
}

DebtModel toDebtDModel(prefix0.Debt databaseDebt) {
  DebtModel debtModel = DebtModel(
    id: databaseDebt.id,
    name: databaseDebt.name,
    debt: databaseDebt.debt,
    description: databaseDebt.description,
    debtStartDate: databaseDebt.debtStartDate,
    debtDueDate: databaseDebt.debtDueDate,
    priority: databaseDebt.priority,
    iOwe: databaseDebt.iOwe,
    completed: databaseDebt.completed,
  );

  return debtModel;
}

List<DebtModel> toDebtModelList(List<prefix0.Debt> databaseList) {
  List<DebtModel> debtModelList = [];

  for (int i = 0; i < databaseList.length; i++) {
    debtModelList.add(toDebtDModel(databaseList[i]));
  }

  return debtModelList;
}

prefix0.Debt toDatabaseDebt(DebtModel debtModel) {
  prefix0.Debt debt = Debt(
    id: debtModel.id,
    name: debtModel.name,
    debt: debtModel.debt,
    description: debtModel.description,
    debtStartDate: debtModel.debtStartDate,
    debtDueDate: debtModel.debtDueDate,
    priority: debtModel.priority,
    iOwe: debtModel.iOwe,
    completed: debtModel.completed,
  );

  return debt;
}
