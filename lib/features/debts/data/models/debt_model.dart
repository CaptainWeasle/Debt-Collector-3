import 'package:meta/meta.dart';

import '../../domain/entities/debt.dart';

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
