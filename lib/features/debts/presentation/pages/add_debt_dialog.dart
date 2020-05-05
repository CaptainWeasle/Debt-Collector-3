import 'package:flutter/material.dart';

void addDebtBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              addDebtDialogTitle(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {},
              ),
              Spacer(),
            ],
          ),
        );
      });
}

Widget addDebtDialogTitle() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListTile(
      leading: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          "Create a new debt",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
  );
}
