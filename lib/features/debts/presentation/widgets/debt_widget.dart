import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:flutter/material.dart';

class DebtWidget extends StatelessWidget {
  final Debt debt;

  const DebtWidget({Key key, @required this.debt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.euro_symbol),
      title: Text(debt.debt.toString()),
      subtitle: Text(debt.name),
    );
  }
}
