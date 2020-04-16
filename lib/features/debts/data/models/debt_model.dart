import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class DebtModel extends Debt {
  DebtModel({
    id,
    @required name,
    @required debt,
    description,
    debtStartDate,
    debtDueDate,
    priority,
    iOwe,
    completed,
  }) : super(
          id: id,
          name: name,
          debt: debt,
          description: description,
          debtStartDate: debtStartDate,
          debtDueDate: debtDueDate,
          priority: priority,
          iOwe: iOwe,
          completed: completed,
        );
}
