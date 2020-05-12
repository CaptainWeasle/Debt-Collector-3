import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/debt.dart';
import '../../bloc/debt_bloc.dart';
import 'add_debt_dialog_title.dart';

class ModalBottomSheet extends StatefulWidget {
  final Debt debt;

  ModalBottomSheet(this.debt);
  @override
  State<StatefulWidget> createState() => ModalBottomSheetState();
}

class ModalBottomSheetState extends State<ModalBottomSheet> {
  TextEditingController nameController = TextEditingController();
  TextEditingController debtController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AddDebtDialogTitle(),
        textFieldName(),
        textFieldDebt(),
        datePicker(),
        addDebtButton(context),
        Spacer(),
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

  Widget addDebtButton(BuildContext context) {
    return BlocBuilder<DebtBloc, DebtState>(builder: (context, state) {
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: double.infinity,
              //height: ,
              child: MaterialButton(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("ADD DEBT", style: TextStyle(fontSize: 16)),
                  ),
                  //color: Colors.blue,
                  onPressed: () {
                    BlocProvider.of<DebtBloc>(context).add(AddDebt(Debt(
                      name: nameController.text,
                      debt: double.parse(debtController.text),
                      description: "",
                      debtStartDate: DateTime.now(),
                      debtDueDate: DateTime.parse(dateController.text),
                      priority: 1,
                      iOwe: false,
                      completed: false,
                    )));
                    Navigator.pop(context);
                  })));
    });
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
}
