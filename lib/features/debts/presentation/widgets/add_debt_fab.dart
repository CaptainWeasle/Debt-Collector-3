import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/debt_bloc.dart';
import 'addDebtDialog/add_debt_dialog.dart';

class AddDebtFAB extends StatelessWidget {
  const AddDebtFAB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(
      builder: (context, state) {
        return FloatingActionButton(
          key: ObjectKey(context),
          child: Icon(Icons.add),
          onPressed: () {
            addDebtBottomSheet(context);
          },
        );
      },
    );
  }
}
