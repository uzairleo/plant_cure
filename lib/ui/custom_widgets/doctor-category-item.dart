// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/doctor-tag.dart';
// import 'package:ponansasa_patient_app/ui/screens/talk-with-doctor/doctors_list_screen/doctors_list_screen.dart';

// class DoctorCategoryTile extends StatelessWidget {
//   final DoctorTag doctorTag;

//   DoctorCategoryTile({this.doctorTag});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 2.0, right: 2.0),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(10),
//         onTap: () {
//           Get.to(DoctorsListScreen(doctorTag));
// //
//         },
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
//               ClipRRect(
//                   borderRadius: BorderRadius.circular(100.0),
//                   child: Container(
//                     height: 44,
//                     width: 44,
//                     child: doctorTag.tagIcon != null
//                         ? FadeInImage.assetNetwork(
//                             fit: BoxFit.fill,
//                             placeholder: "assets/static_assets/placeholder.png",
//                             image: doctorTag.tagIcon ?? '')
//                         : Image.asset('assets/static_assets/placeholder.png'),
//                   )),
//               SizedBox(
//                 height: 10,
//               ),
//               //seconds widget
//               Text(
//                 doctorTag.tagName,
//                 textAlign: TextAlign.center,
//                 style: categoryTextStyle,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
