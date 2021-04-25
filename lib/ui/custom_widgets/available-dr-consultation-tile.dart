// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// ///
// ///A custom widget used for doctor consultation purposes
// ///

// class AvailableDoctorConsultationTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 15.0),
//       child: Container(
//         padding: EdgeInsets.only(bottom: 17.9),
//         // height: 111,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey[200],
//                 blurRadius: 4, // has the effect of softening the shadow
//                 spreadRadius: 1.6, // has the effect of extending the shadow
//                 offset: Offset(
//                   0, // horizontal, move right 10
//                   2.4, // vertical, move down 10
//                 ),
//               )
//             ]),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               height: 14,
//             ),
//             Row(
//               children: <Widget>[
//                 //first row
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 //doctor image

//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(5.0),
//                   child: ImageContainer(
//                     width: 57,
//                     height: 63,
//                     assetImage: "assets/static_assets/doctor1.png",
//                   ),
//                 ),
//                 SizedBox(
//                   width: 4.0,
//                 ),
//                 //2nd widget
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             "Dr. Tatjana",
//                             style: subBodyTextStyle.copyWith(
//                                 fontWeight: FontWeight.w600),
//                           ),
//                           Container(
//                             width: 110,
//                           ),
//                           Text("Free",
//                               style: categoryTextStyle.copyWith(
//                                 color: Color(0XFF43AB2A),
//                               )),
//                           Container(
//                             width: 10,
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: <Widget>[
//                           RichText(
//                             text: TextSpan(children: [
//                               TextSpan(
//                                 text: "Harapan Bunda Hospital",
//                                 style: labelTextStyle2,
//                               ),
//                               TextSpan(
//                                   text: " 2,9 km",
//                                   style: buttonTextStyle2.copyWith(
//                                     color: Color(0XFF407ADE),
//                                   ))
//                             ]),
//                           )
//                         ],
//                       ),
//                       Row(
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
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               height: 8,
//             ),
//             Container(
//                 padding:
//                     EdgeInsets.only(top: 4, bottom: 4, left: 13, right: 13),
//                 color: Color(0XFF407ADE).withOpacity(0.4),
//                 child: Row(
//                   children: <Widget>[
//                     Text(
//                       "Availaible today at 12:00PM - 02:00PM",
//                       style: categoryTextStyle,
//                     )
//                   ],
//                 )),
//             Container(
//               height: 13,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 RatingBarIndicator(
//                     rating: 3.5,
//                     itemSize: 16.0,
//                     itemCount: 5,
//                     itemBuilder: (context, index) {
//                       return Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                       );
//                     }),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 12.0),
//                   child: Text("3.5"),
//                 ),
//                 Container(
//                   width: 60,
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
