// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/models/medicine-category.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// class MedicineItemWidget extends StatelessWidget {
//   final MedicineCategory medicine;
//   MedicineItemWidget({this.medicine});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 2.0, right: 2.0),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(10),
//         onTap: () {},
//         child: Container(
//           height: 100,
//           width: 100,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey[200],
//                   blurRadius: 4, // has the effect of softening the shadow
//                   spreadRadius: 1.8, // has the effect of extending the shadow
//                   offset: Offset(
//                     0, // horizontal, move right 10
//                     2.4, // vertical, move down 10
//                   ),
//                 ),
//               ]),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               //first widget
//               ImageContainer(
//                 width: 44,
//                 height: 44,
//                 assetImage: "assets/static_assets/fever.png",
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               //seconds widget
//               Text(
//                 "Fever",
//                 style: categoryTextStyle,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
