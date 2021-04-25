// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// ///
// ///this custom widget is used for Transition item widget which show the progress of make payment section
// ///

// class TransactionHistoryTile extends StatelessWidget {
//   // final Cart cart;
//   // TransactionTile({this.cart});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20.0),
//       child: Container(
//         padding: EdgeInsets.only(bottom: 25, top: 21, left: 16),
//         decoration: BoxDecoration(
//             color: Color(0XFFF3F3F3),
//             borderRadius: BorderRadius.circular(10.0)),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             //first row
//             //doctor image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(5.0),
//               child: ImageContainer(
//                 width: 61,
//                 height: 61,
//                 assetImage: "assets/static_assets/Motrin.png",
//               ),
//             ),
//             SizedBox(
//               width: 14.0,
//             ),
//             //2nd widget
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Arrived",
//                   style: subBodyTextStyle.copyWith(
//                       color: blueThemeColor, fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       "Paracetamol 500 mg",
//                       style: subBodyTextStyle.copyWith(
//                           fontWeight: FontWeight.w600),
//                     ),
//                     Container(
//                       width: 20,
//                     ),
//                     Container(
//                       width: 10,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 2, bottom: 4),
//                       child: Text(
//                         "Qty 1",
//                         style: categoryTextStyle2,
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       "May 20, 2020",
//                       style: categoryTextStyle.copyWith(fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
