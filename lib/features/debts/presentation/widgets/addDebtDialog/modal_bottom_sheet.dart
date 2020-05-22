import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/debt.dart';
import '../../bloc/debt_bloc.dart';
import '../widgets.dart';

class ModalBottomSheet extends StatefulWidget {
  ModalBottomSheet();
  @override
  State<StatefulWidget> createState() => ModalBottomSheetState();
}

class ModalBottomSheetState extends State<ModalBottomSheet> {
  TextEditingController nameController = TextEditingController();
  TextEditingController debtController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool iOwe = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        titleTile(),
        oweChecker(),
        textFieldName(),
        textFieldDebt(),
        datePicker(),
        addDebtButton2(context),
        Spacer(),
      ],
    );
  }

  Widget titleTile() {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
            leading: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Create a new debt",
                  style: TextStyle(fontSize: 20),
                ))));
  }

  Widget oweChecker() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Do you owe someone?",
          style: TextStyle(fontSize: 16),
        ),
        Checkbox(
            value: iOwe,
            onChanged: (bool c) {
              setState(() {
                iOwe = c;
              });
            }),
      ],
    );
  }

  Widget textFieldName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          labelText: "Name",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget textFieldDebt() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: debtController,
        decoration: InputDecoration(
          labelText: "Debt",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget datePicker() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DateTimeField(
            controller: dateController,
            format: DateFormat("yyyy-MM-dd"),
            decoration: InputDecoration(
              labelText: "Till when?",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            onShowPicker: (context, currentValue) {
              return showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime(2100));
            }));
  }

  Widget addDebtButton2(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(builder: (context, state) {
      return AppButton(
        onPressed: () {
          BlocProvider.of<DebtBloc>(context).add(AddDebt(Debt(
            name: nameController.text,
            debt: double.parse(debtController.text),
            description: "",
            debtStartDate: DateTime.now(),
            debtDueDate: dateController.text == ""
                ? null
                : DateTime.parse(dateController.text),
            priority: 1,
            iOwe: iOwe,
            completed: false,
          )));
          Navigator.pop(context);
        },
        text: "ADD DEBT",
      );
    });
  }
}
