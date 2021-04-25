// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:flutter/material.dart';

// class RoundedButton extends StatelessWidget {
//   final text;
//   final textColor;
//   final onPressed;
//   final color;

//   RoundedButton(
//       {@required this.text,
//       @required this.onPressed,
//       this.textColor,
//       this.color});

//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//       colorBrightness: Brightness.light,
//       textColor: this.textColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(25.0),
//       ),
//       color: this.color,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 15),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: buttonTextStyle.copyWith(color: textColor),
//         ),
//       ),
//       onPressed: onPressed,
//     );
//   }
// }
