import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_button.dart';

class DeleteCompletedButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DeleteCompletedButtonState();
}

class DeleteCompletedButtonState extends State<DeleteCompletedButton> {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: func(),
      text: "DELETE COMPLETED DEBTS",
    );
  }

  Function func() {
    return () {
      print("delete completed debts");
      BlocProvider.of<DebtBloc>(context).add(DeleteCompletedDebts());
    };
  }
}
