import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/debt.dart';
import '../../bloc/debt_bloc.dart';
import 'debt_widget_export.dart';

class DebtWidgetType extends StatelessWidget {
  final Debt debt;
  final Color color;

  const DebtWidgetType({Key key, this.debt, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: DismissibleBackground(),
      key: ObjectKey(debt),
      onDismissed: (direction) {
        BlocProvider.of<DebtBloc>(context).add(DeleteDebt(debt));
      },
      child: Card(
        child: ListTile(
          leading: TileIcon(icon: Icons.euro_symbol, color: color),
          title: Text(
            debt.debt.toString(),
            style: TextStyle(color: color),
          ),
          subtitle: Text(debt.name),
        ),
      ),
    );
  }
}
