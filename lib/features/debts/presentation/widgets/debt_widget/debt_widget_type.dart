import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/debt.dart';
import '../../bloc/debt_bloc.dart';
import 'debt_widget_export.dart';

class DebtWidgetType extends StatefulWidget {
  final Debt debt;
  final Color color;

  const DebtWidgetType({Key key, this.debt, this.color}) : super(key: key);
  @override
  State<StatefulWidget> createState() => DebtWidgetTypeState();
}

class DebtWidgetTypeState extends State<DebtWidgetType> {
  Debt temp;
  bool completed;
  @override
  initState() {
    completed = widget.debt.completed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: DismissibleBackground(),
      key: ObjectKey(widget.debt),
      onDismissed: (direction) {
        BlocProvider.of<DebtBloc>(context).add(DeleteDebt(widget.debt));
      },
      child: Card(
        child: ListTile(
            leading: TileIcon(icon: Icons.euro_symbol, color: widget.color),
            title: Text(
              widget.debt.debt.toString(),
              style: TextStyle(color: widget.color),
            ),
            subtitle: Text(widget.debt.name),
            trailing: Checkbox(
                value: widget.debt.completed,
                onChanged: (b) {
                  setState(() {
                    completed = !completed;
                    print(completed);
                    temp = Debt(
                      id: widget.debt.id,
                      debt: widget.debt.debt,
                      name: widget.debt.name,
                      description: widget.debt.description,
                      debtStartDate: widget.debt.debtStartDate,
                      debtDueDate: widget.debt.debtDueDate,
                      priority: widget.debt.priority,
                      iOwe: widget.debt.iOwe,
                      completed: completed,
                    );
                    print("try to update");
                    BlocProvider.of<DebtBloc>(context).add(UpdateDebt(temp));
                  });
                })),
      ),
    );
  }
}
