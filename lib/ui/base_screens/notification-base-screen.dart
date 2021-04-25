// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/custom-app-bar.dart';

// ///
// ///This screen have a list of notification [base-screen]
// ///

// class NotificationBaseScreen extends StatelessWidget {
//   final appBarTitle;
//   final onBackPressed;
//   final child;
//   NotificationBaseScreen({this.appBarTitle, this.onBackPressed, this.child});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: backgroundColor2,

//             ///
//             ///[custom-app-bar] starts from here
//             ///
//             appBar: CustomAppBar(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                       icon: Icon(
//                         Icons.keyboard_arrow_left,
//                         size: 30.0,
//                       ),
//                       onPressed: onBackPressed),
//                   // Container(),
//                   Text(appBarTitle, style: appBarTextStyle),
//                   // Container(),
//                   Container(
//                     width: 40,
//                   ),
//                 ],
//               ),
//             ),

//             ///
//             ///[body] starts from here
//             ///
//             body: child));
//   }
// }
