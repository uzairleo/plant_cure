// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';
// import 'package:ponansasa_patient_app/ui/screens/activity/raised-issue/view-report-issue-screen.dart';

// ///
// ///This dialog box is used when report issue successfully
// ///

// class ConfirmIssueDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         height: 228,
//         padding: EdgeInsets.only(top: 24, left: 29.9, right: 29.9),
//         decoration: BoxDecoration(
//             color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ImageContainer(
//               assetImage: 'assets/static_assets/Successful.png',
//               height: 61.96,
//               width: 62,
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               "Report success!",
//               style: appBarTextStyle3,
//             ),
//             Divider(),
//             FlatButton(
//               child: Text(
//                 "View details",
//                 style: appBarTextStyle3.copyWith(color: Color(0XFF707070)),
//               ),
//               onPressed: () {
//                 print("View details pressed");

//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (_) => ViewReportScreenIsue()));
//               },
//             ),
//             FlatButton(
//               child: Text(
//                 "Back to home",
//                 style: appBarTextStyle3.copyWith(color: blueThemeColor),
//               ),
//               onPressed: () {
//                 print("Back to home pressed");
//                 Navigator.of(context).pop();
//                 Navigator.of(context).pop();
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
