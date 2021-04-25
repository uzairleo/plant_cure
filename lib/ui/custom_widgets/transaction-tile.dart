// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// ///
// ///this custom widget is used for transaction information
// ///

// class TransactionTile extends StatelessWidget {
//   // final Cart cart;
//   // TransactionTile({this.cart});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16.0),
//       child: Container(
//         padding: EdgeInsets.only(bottom: 25, top: 21, left: 16),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey[200],
//                 blurRadius: 5, // has the effect of softening the shadow
//                 spreadRadius: 1.6, // has the effect of extending the shadow
//                 offset: Offset(
//                   0, // horizontal, move right 10
//                   2.4, // vertical, move down 10
//                 ),
//               ),
//             ],
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
//                 assetImage: "assets/static_assets/Paracetamol.png",
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
