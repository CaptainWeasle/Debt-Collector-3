import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final Function onPressed;
  final String text;

  const AppButton({Key key, this.onPressed, this.text}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AppButtonState();
}

class AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: double.infinity,
            //height: ,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  side: BorderSide(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(widget.text, style: TextStyle(fontSize: 16)),
              ),
              onPressed: widget.onPressed,
            )));
  }
}
