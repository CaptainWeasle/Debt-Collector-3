import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DebtWidget extends StatelessWidget {
  final Debt debt;

  const DebtWidget({Key key, @required this.debt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(
      builder: (context, state) {
        return Dismissible(
          background: Container(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Löschen",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            color: Colors.redAccent,
          ),
          key: ObjectKey(debt),
          onDismissed: (direction) {
            BlocProvider.of<DebtBloc>(context).add(DeleteDebt(debt));
          },
          child: ListTile(
            leading: Icon(Icons.euro_symbol),
            title: Text(debt.debt.toString()),
            subtitle: Text(debt.name),
          ),
        );
      },
    );
  }
}
