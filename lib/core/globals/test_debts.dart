import 'package:debt_collector_3/features/debts/data/models/debt_model.dart';
import 'package:debt_collector_3/database/moor_database/moor_database.dart'
    as prefix0;
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';

Debt tD = Debt(
  id: 123,
  name: "test debt",
  debt: 12.0,
  description: "test description",
  debtStartDate: DateTime.parse("1969-07-20 20:18:04Z"),
  debtDueDate: DateTime.parse("1969-07-21 20:18:04Z"),
  priority: 0,
  iOwe: true,
  completed: true,
);

Debt tD2 = Debt(
  id: 1234,
  name: "test debt 2",
  debt: 22.0,
  description: "test description 2",
  debtStartDate: DateTime.parse("1969-08-20 20:18:04Z"),
  debtDueDate: DateTime.parse("1969-08-21 20:18:04Z"),
  priority: 2,
  iOwe: false,
  completed: false,
);

DebtModel tDM = DebtModel(
  id: 123,
  name: "test debt",
  debt: 12.0,
  description: "test description",
  debtStartDate: DateTime.parse("1969-07-20 20:18:04Z"),
  debtDueDate: DateTime.parse("1969-07-21 20:18:04Z"),
  priority: 0,
  iOwe: true,
  completed: true,
);

DebtModel tDM2 = DebtModel(
  id: 1234,
  name: "test debt 2",
  debt: 22.0,
  description: "test description 2",
  debtStartDate: DateTime.parse("1969-08-20 20:18:04Z"),
  debtDueDate: DateTime.parse("1969-08-21 20:18:04Z"),
  priority: 2,
  iOwe: false,
  completed: false,
);

prefix0.Debt tDD = prefix0.Debt(
  id: 123,
  name: "test debt",
  debt: 12.0,
  description: "test description",
  debtStartDate: DateTime.parse("1969-07-20 20:18:04Z"),
  debtDueDate: DateTime.parse("1969-07-21 20:18:04Z"),
  priority: 0,
  iOwe: true,
  completed: true,
);

prefix0.Debt tDD2 = prefix0.Debt(
  id: 1234,
  name: "test debt 2",
  debt: 22.0,
  description: "test description 2",
  debtStartDate: DateTime.parse("1969-08-20 20:18:04Z"),
  debtDueDate: DateTime.parse("1969-08-21 20:18:04Z"),
  priority: 2,
  iOwe: false,
  completed: false,
);

List<Debt> tDL = [
  tD,
  tD2,
];

List<DebtModel> tDML = [
  tDM,
  tDM2,
];

List<prefix0.Debt> tDDL = [
  tDD,
  tDD2,
];
