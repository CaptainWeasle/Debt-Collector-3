import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DebtControls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DebtControlsState();
  }
}

class DebtControlsState extends State<DebtControls> {
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          color: Colors.amber,
          child: Text("add"),
          onPressed: dispatchAddDebt,
        ),
        RaisedButton(
          color: Colors.amber,
          child: Text("delete all"),
          onPressed: dispatchDeleteAll,
        ),
      ],
    );
  }

  void dispatchAddDebt() {
    BlocProvider.of<DebtBloc>(context).add(AddDebt(debt));
    BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
  }

  void dispatchDeleteAll() {
    BlocProvider.of<DebtBloc>(context).add(DeleteAllDebts());
    BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
  }
}
