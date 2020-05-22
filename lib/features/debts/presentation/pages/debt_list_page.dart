import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/debt_bloc.dart';
import '../widgets/debt_widget/debt_widget.dart';
import '../widgets/widgets.dart';

class DebtListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ObjectKey(context),
      appBar: AppBar(
        title: Text("Debt Collector 3"),
      ),
      floatingActionButton: AddDebtFAB(),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
    return Column(
      children: <Widget>[
        DeleteAllButton(),
        DeleteCompletedButton(),
        BlocBuilder<DebtBloc, DebtState>(
          builder: (context, state) {
            if (state.state is Loaded) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.debtList.length,
                  itemBuilder: (context, i) {
                    print(state.debtList[i].completed.toString());
                    return DebtWidget(debt: state.debtList[i]);
                  },
                ),
              );
            }
            return Text("No Debts");
          },
        ),
      ],
    );
  }
}
