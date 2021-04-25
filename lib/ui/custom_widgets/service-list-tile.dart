// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// class ServiceListTile extends StatelessWidget {
//   final title;
//   final discription;
//   final imageUrl;
//   final ontap;
//   ServiceListTile(
//       {@required this.title, this.discription, this.imageUrl, this.ontap});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 6.0),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         color: Colors.white,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(10.0),
//           onTap: ontap,
//           child: Container(
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               // color: Colors.white,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 SizedBox(
//                   width: 8.0,
//                 ),
//                 ImageContainer(
//                   width: 44,
//                   height: 44,
//                   assetImage: imageUrl,
//                 ),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(
//                         this.title,
//                         style: bodyTextStyle.copyWith(
//                             fontWeight: FontWeight.w600, fontSize: 14),
//                       ),
//                       Text(
//                         this.discription,
//                         style: bodyTextStyle.copyWith(
//                             fontWeight: FontWeight.w500, fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(),
//                 Container(),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(
//                       Icons.keyboard_arrow_right,
//                       size: 24,
//                       color: Colors.blue,
//                     ),
//                   ],
//                 ),
//                 Container(
//                   width: 6,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
