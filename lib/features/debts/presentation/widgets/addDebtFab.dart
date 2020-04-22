import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget addDebtFAB() {
  return BlocBuilder<DebtBloc, DebtState>(
    builder: (context, state) {
      return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Debt debt = Debt(
            name: "HANS",
            debt: 12.0,
            description: "test description",
            debtStartDate: DateTime.parse("1969-07-20 20:18:04Z"),
            debtDueDate: DateTime.parse("1969-07-21 20:18:04Z"),
            priority: 0,
            iOwe: true,
            completed: true,
          );
          BlocProvider.of<DebtBloc>(context).add(AddDebt(debt));
          BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
        },
      );
    },
  );
}
