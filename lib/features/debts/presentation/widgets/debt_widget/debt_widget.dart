import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/debt.dart';
import '../../bloc/debt_bloc.dart';
import 'debt_widget_export.dart';

class DebtWidget extends StatelessWidget {
  final Debt debt;

  const DebtWidget({Key key, @required this.debt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(
      builder: (context, state) {
        if (debt.iOwe)
          return DebtWidgetType(debt: debt, color: Colors.red);
        else if (!debt.iOwe)
          return DebtWidgetType(debt: debt, color: Colors.green);
        return ListTile(title: Text("Oops"));
      },
    );
  }
}
