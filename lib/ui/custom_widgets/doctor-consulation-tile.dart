// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/doctor.dart';
// import 'package:ponansasa_patient_app/ui/screens/talk-with-doctor/doctor-profile-screen.dart';

// ///
// ///A custom widget used for doctor consultation purposes
// ///

// class DoctorConsultationTile extends StatelessWidget {
//   final bool isActivity;
//   final Doctor doctor;
//   final String doctorTagName;
//   final Function onChatPressed;

//   DoctorConsultationTile(
//       {this.isActivity = false,
//       this.doctor,
//       this.doctorTagName,
//       this.onChatPressed}) {
//     print('${doctor.toJson()}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 15.0),
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (_) => DoctorProfileScreen(doctor, doctorTagName)));
//         },
//         child: Container(
//             padding: EdgeInsets.only(top: 18.0, bottom: 15.0),
//             // height: 111,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey[200],
//                     blurRadius: 4, // has the effect of softening the shadow
//                     spreadRadius: 1.6, // has the effect of extending the shadow
//                     offset: Offset(
//                       0, // horizontal, move right 10
//                       2.4, // vertical, move down 10
//                     ),
//                   )
//                 ]),
//             child: Row(
//               children: <Widget>[
//                 //first row
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 //doctor image

//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(5.0),
//                   child: Container(
//                     height: 63,
//                     width: 57,
//                     child: doctor.featureImage == null
//                         ? Image.asset('assets/static_assets/placeholder.png')
//                         : FadeInImage.assetNetwork(
//                             fit: BoxFit.cover,
//                             placeholder: "assets/static_assets/placeholder.png",
//                             image: doctor?.featureImage ?? ''),
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
//                           Flexible(
//                             fit: FlexFit.tight,
//                             child: Text(
//                               doctor.userName ?? '',
//                               style: subBodyTextStyle.copyWith(
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           (!isActivity)
//                               ? Padding(
//                                   padding: const EdgeInsets.only(left: 1.0),
//                                   child: Text(
//                                     doctor.isFree ? 'Free' : 'Paid',
//                                     style: categoryTextStyle.copyWith(
//                                       color: Color(0XFF43AB2A),
//                                     ),
//                                   ),
//                                 )
//                               : Padding(
//                                   padding: const EdgeInsets.only(left: 1.0),
//                                   child: Text(
//                                     'May 20, 2020',
//                                     style: categoryTextStyle.copyWith(
//                                       fontSize: 10,
//                                     ),
//                                   ),
//                                 ),
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
//                                 text: doctor.hospital ?? '',
//                                 style: labelTextStyle2,
//                               ),
//                               //Todo: This distance to be made dynamic
//                               TextSpan(
//                                   text: "2,9 km",
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
//                                 child: Text(doctor.drType ?? '',
//                                     style: buttonTextStyle2.copyWith(
//                                         color: Color(0XFF407ADE),
//                                         fontWeight: FontWeight.w500))),
//                           )
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           RatingBarIndicator(
//                               rating: doctor.averageRating ?? 0,
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
//                             child: Text(doctor.averageRating.toString() ?? ''),
//                           ),
//                           Container(
//                             width: 44,
//                           ),
//                           InkWell(
//                             onTap: () {
//                               if (doctor.isFree) {}
//                             },
//                             child: Container(
//                               height: 25,
//                               width: 65,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(24.0),
//                                 color: Color(0XFF407ADE),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 4.0, right: 4.0),
//                                 child: Center(
//                                   child: Text(
//                                     "chat",
//                                     style: buttonTextStyle2.copyWith(
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 20,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             )),
//       ),
//     );
//   }
// }
