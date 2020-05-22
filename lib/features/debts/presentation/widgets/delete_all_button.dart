import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/debt_bloc.dart';
import 'app_button.dart';

class DeleteAllButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DeleteAllButtonState();
}

class DeleteAllButtonState extends State<DeleteAllButton> {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: func(),
      text: "DELETE ALL DEBTS",
    );
  }

  Function func() {
    return () {
      print("delete all debts");
      BlocProvider.of<DebtBloc>(context).add(DeleteAllDebts());
    };
  }
}
