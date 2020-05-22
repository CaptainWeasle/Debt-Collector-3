import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/debt.dart';
import '../../bloc/debt_bloc.dart';
import 'debt_widget_export.dart';

class DebtWidget extends StatefulWidget {
  final Debt debt;

  const DebtWidget({Key key, @required this.debt}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DebtWidgetState();
}

class DebtWidgetState extends State<DebtWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(
      builder: (context, state) {
        if (widget.debt.iOwe)
          return DebtWidgetType(debt: widget.debt, color: Colors.red);
        else if (!widget.debt.iOwe)
          return DebtWidgetType(debt: widget.debt, color: Colors.green);
        return ListTile(title: Text("Oops"));
      },
    );
  }
}
