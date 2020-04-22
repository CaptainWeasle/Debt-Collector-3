import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/debt_bloc.dart';
import '../widgets/widgets.dart';

class DebtListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Debt Collector 3"),
      ),
      floatingActionButton: addDebtFAB(),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: BlocBuilder<DebtBloc, DebtState>(
        builder: (context, state) {
          if (state is Empty)
            BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
          if (state is Loading)
            BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
          else if (state is Error)
            return MessageDisplay(message: state.message);
          else if (state is Loaded) {
            return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, i) {
                return DebtWidget(debt: state.list[i]);
              },
            );
          } else if (state is Done)
            BlocProvider.of<DebtBloc>(context).add(GetAllDebts());
          return MessageDisplay(message: "lol?");
        },
      ),
    );
  }
}
