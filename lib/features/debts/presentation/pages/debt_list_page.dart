import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../bloc/debt_bloc.dart';
import '../widgets/widgets.dart';

class DebtListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Debt Collector 3"),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<DebtBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<DebtBloc>(),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          TriviaControls(),
          // Core List
          BlocBuilder<DebtBloc, DebtState>(
            builder: (context, state) {
              if (state is Empty)
                return MessageDisplay(message: "empty");
              else if (state is Loading)
                return LoadingWidget();
              else if (state is Error)
                return MessageDisplay(message: state.message);
              else if (state is Loaded) {
                return ListView.builder(
                  itemCount: state.list.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return DebtWidget(debt: state.list[index]);
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class TriviaControls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TriviaControlsState();
  }
}

class TriviaControlsState extends State<TriviaControls> {
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
    return RaisedButton(
      color: Colors.amber,
      child: Text("add"),
      onPressed: dispatchAddDebt,
    );
  }

  void dispatchAddDebt() {
    BlocProvider.of<DebtBloc>(context).add(AddDebt(debt));
    BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
  }
}
