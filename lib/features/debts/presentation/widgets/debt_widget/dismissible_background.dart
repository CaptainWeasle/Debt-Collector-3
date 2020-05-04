import 'package:flutter/material.dart';

class DismissibleBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Delete",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      color: Colors.redAccent,
    );
  }
}
