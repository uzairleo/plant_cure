import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:flutter/material.dart';

class RoundedRaisedButton extends StatelessWidget {
  final buttonText;
  final onPressed;
  final color;
  RoundedRaisedButton({this.buttonText, this.onPressed, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: RaisedButton(
        onPressed: this.onPressed,
        color: this.color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            '$buttonText',
            style: buttonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
