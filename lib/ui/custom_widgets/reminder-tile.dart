// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/reminder.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/alert_dialogs/image-success-dialog.dart';

// ///
// ///Custom widget for showing the reminder tile to user on remidner screen
// ///
// class ReminderTile extends StatelessWidget {
//   final Reminder reminder;
//   final OnPressed onPressed;
//   ReminderTile(this.reminder, this.onPressed);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 6.0, left: 15, right: 15),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         color: Colors.white,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(10.0),
//           onTap: onPressed,
//           child: Container(
//             height: 110,
//             padding: EdgeInsets.only(top: 8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               // color: Colors.white,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 SizedBox(
//                   width: 14.0,
//                 ),
//                 // ImageContainer(
//                 //   width: 44,
//                 //   height: 44,
//                 //   assetImage: 'assets/static-assets/',
//                 // ),
//                 Icon(
//                   Icons.access_time,
//                   size: 44,
//                   color: Colors.blue,
//                 ),
//                 SizedBox(
//                   width: 14.0,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       SizedBox(height: 3),
//                       Text(
//                         "${reminder.medicine?.name ?? "null"}",
//                         style: bodyTextStyle.copyWith(
//                             fontWeight: FontWeight.w600, fontSize: 15),
//                       ),
//                       SizedBox(height: 3),
//                       reminder.reminderTimes.isEmpty
//                           ? Container()
//                           : Row(
//                               children: reminder.reminderTimes
//                                   .map((e) => Text(
//                                         "${e.format(context)},",
//                                         style: bodyTextStyle.copyWith(
//                                             color: Colors.black54,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 13),
//                                       ))
//                                   .toList(),
//                             ),
//                       Text(
//                         "${reminder.dose}\n${reminder.instruction}",
//                         style: bodyTextStyle.copyWith(
//                             color: Colors.black54,
//                             fontWeight: FontWeight.w500,
//                             fontSize: 13),
//                       ),
//                     ],
//                   ),
//                 ),
//                 //     Container(),
//                 //     Container(),
//                 //     Column(
//                 //       mainAxisAlignment: MainAxisAlignment.center,
//                 //       children: <Widget>[
//                 //         Icon(
//                 //           Icons.keyboard_arrow_right,
//                 //           size: 24,
//                 //           color: Colors.blue,
//                 //         ),
//                 //       ],
//                 //     ),
//                 //     Container(
//                 //       width: 6,
//                 //     ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
