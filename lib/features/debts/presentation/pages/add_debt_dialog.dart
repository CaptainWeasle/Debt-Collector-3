import 'package:flutter/material.dart';

import '../../domain/entities/debt.dart';
import '../widgets/addDebtDialog/modal_bottom_sheet.dart';

void addDebtBottomSheet(context, Debt debt) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return ModalBottomSheet(debt);
    },
  );
}
