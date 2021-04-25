// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/medicine-tag.dart';
// import 'package:ponansasa_patient_app/ui/screens/medicine/medicines-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/medicine/others-medicine/others-medicineTag-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/medicine/medicine-view-modal.dart';
// import 'package:provider/provider.dart';

// import 'image-container.dart';

// class MedicineItemWidget2 extends StatelessWidget {
//   final MedicineTag tag;
//   MedicineItemWidget2({this.tag});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 2.0, right: 2.0),
//       child: Card(
//         elevation: 1.8,
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//         child: InkWell(
//           borderRadius: BorderRadius.circular(10),
//           onTap: () {
//             (tag.name=="Others")
//             ? Navigator.push(
//                 context, MaterialPageRoute(builder: (_) =>OthersMedicineTagScreen()))
         
//             :Navigator.push(
//                 context, MaterialPageRoute(builder: (_) => MedicinesScreen(tag.id)));
//           },
//           child: Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               // color: Colors.white,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 //first widget
//                 (tag.name=="Others")
//                 ?
//                 ImageContainer(
//                   width: 44,
//                   height: 44,
//                   assetImage: "assets/static_assets/others.png",
//                 )
//                 :
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(150.0),
//                   child: Container(
//                       height: 44,
//                       width: 44,
//                       child: FadeInImage.assetNetwork(
//                           fit: BoxFit.fill,
//                           placeholder: "assets/static_assets/placeholder.png",
//                           image: tag.image)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 //seconds widget
//                 Text(
//                   tag.name,
//                   style: categoryTextStyle,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
