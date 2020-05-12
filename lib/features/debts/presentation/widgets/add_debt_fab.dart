import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:debt_collector_3/features/debts/presentation/pages/add_debt_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDebtFAB extends StatelessWidget {
  final Debt debt;
  const AddDebtFAB({Key key, @required this.debt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(
      builder: (context, state) {
        return FloatingActionButton(
          key: ObjectKey(context),
          child: Icon(Icons.add),
          onPressed: () {
            addDebtBottomSheet(context, debt);
          },
        );
      },
    );
  }
}
