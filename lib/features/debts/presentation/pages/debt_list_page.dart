import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/debt_bloc.dart';
import '../widgets/widgets.dart';

class DebtListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      key: ObjectKey(context),
      appBar: AppBar(
        title: Text("Debt Collector 3"),
      ),
      floatingActionButton: AddDebtFAB(
        debt: debt,
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            BlocProvider.of<DebtBloc>(context).add(DeleteAllDebts());
          },
        ),
        BlocBuilder<DebtBloc, DebtState>(
          builder: (context, state) {
            if (state is Empty)
              //print("empty");
            BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
            else if (state is Error)
              return MessageDisplay(message: state.message);
            else if (state is Loaded) {
              return Expanded(
                child: ListView.builder(
                  //key: UniqueKey(),
                  itemCount: state.list.length,
                  itemBuilder: (context, i) {
                    return DebtWidget(debt: state.list[i]);
                  },
                ),
              );
            } else if (state is Done) {
              return Expanded(
                child: ListView.builder(
                  //key: UniqueKey(),
                  itemCount: state.list.length,
                  itemBuilder: (context, i) {
                    return DebtWidget(debt: state.list[i]);
                  },
                ),
              );
            }
            return MessageDisplay(message: "lol?");
          },
        ),
      ],
    );
  }
}
