// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// ///
// ///A custom widget used for doctor consultation purposes
// ///

// class DoctorConsultationHistoryTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 15.0),
//       child: Container(
//           height: 111,
//           decoration: BoxDecoration(
//             color: Color(0XFFF3F3F3),
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           child: Row(
//             children: <Widget>[
//               //first row
//               SizedBox(
//                 width: 20.0,
//               ),
//               //doctor image

//               ClipRRect(
//                 borderRadius: BorderRadius.circular(5.0),
//                 child: ImageContainer(
//                   width: 57,
//                   height: 63,
//                   assetImage: "assets/static_assets/doctor1.png",
//                 ),
//               ),
//               SizedBox(
//                 width: 4.0,
//               ),
//               //2nd widget
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           "Dr. Tatjana",
//                           style: subBodyTextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               width: 80,
//                             ),
//                             Text(
//                               'May 20, 2020',
//                               style: categoryTextStyle.copyWith(
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           width: 10,
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                         RichText(
//                           text: TextSpan(children: [
//                             TextSpan(
//                               text: "Harapan Bunda Hospital",
//                               style: labelTextStyle2,
//                             ),
//                             TextSpan(
//                                 text: " 2,9 km",
//                                 style: buttonTextStyle2.copyWith(
//                                   color: Color(0XFF407ADE),
//                                 ))
//                           ]),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 2.0),
//                       child: Row(
//                         children: <Widget>[
//                           //dentistTag
//                           Flexible(
//                             child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Color(0XFFE4EEFF),
//                                     borderRadius: BorderRadius.circular(5.0)),
//                                 child: Text(" Dentist ",
//                                     style: buttonTextStyle2.copyWith(
//                                         color: Color(0XFF407ADE),
//                                         fontWeight: FontWeight.w500))),
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           RatingBarIndicator(
//                               rating: 3.5,
//                               itemSize: 16.0,
//                               itemCount: 5,
//                               itemBuilder: (context, index) {
//                                 return Icon(
//                                   Icons.star,
//                                   color: Colors.yellow,
//                                 );
//                               }),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 12.9),
//                             child: Text("3.5"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           )),
//     );
//   }
// }
