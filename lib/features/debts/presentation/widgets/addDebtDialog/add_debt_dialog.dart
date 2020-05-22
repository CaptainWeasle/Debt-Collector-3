import 'package:flutter/material.dart';

import 'modal_bottom_sheet.dart';

void addDebtBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return ModalBottomSheet();
    },
  );
}
