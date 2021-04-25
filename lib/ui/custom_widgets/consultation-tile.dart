// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/enums/consultation-status.dart';
// import 'package:ponansasa_patient_app/core/models/consultation/consultation.dart';
// import 'package:ponansasa_patient_app/core/models/doctor.dart';

// import 'image-container.dart';

// ///
// ///A custom widget used for doctor consultation purposes
// ///

// class ConsultationTile extends StatelessWidget {
//   final Consultation consultation;
//   final Function onStartPressed;
//   final Doctor doctor;
//   final int index;
//   ConsultationTile(
//       {this.consultation, this.index, this.onStartPressed, this.doctor});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 15.0),
//       child: Container(
//           padding: EdgeInsets.only(top: 10.0, bottom: 13.0),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey[200],
//                   blurRadius: 4, // has the effect of softening the shadow
//                   spreadRadius: 1.6, // has the effect of extending the shadow
//                   offset: Offset(
//                     0, // horizontal, move right 10
//                     2.4, // vertical, move down 10
//                   ),
//                 )
//               ]),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               //first Row()
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 10.0),
//                     child: Text(
//                       'May 20, 2020',
//                       style: categoryTextStyle.copyWith(
//                         fontSize: 10,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               //second image and doctor info row
//               Row(
//                 children: <Widget>[
//                   //first row
//                   SizedBox(
//                     width: 16.0,
//                   ),
//                   //doctor image

//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(5.0),
//                     child: Container(
//                       height: 63,
//                       width: 57,
//                       child: doctor.featureImage == null
//                           ? Image.asset('assets/static_assets/doctor1.png')
//                           : FadeInImage.assetNetwork(
//                               fit: BoxFit.cover,
//                               placeholder:
//                                   "assets/static_assets/placeholder.png",
//                               image: doctor?.featureImage ?? ''),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 8.0,
//                   ),
//                   //2nd widget
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Flexible(
//                               fit: FlexFit.tight,
//                               child: Text(
//                                 doctor.userName ?? 'null name',
//                                 style: subBodyTextStyle.copyWith(
//                                     fontWeight: FontWeight.w600),
//                               ),
//                             ),
//                             Container(
//                               width: 10,
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: <Widget>[
//                             RichText(
//                               text: TextSpan(children: [
//                                 TextSpan(
//                                   text: doctor.hospital ??
//                                       'Harapan Bunda Hospital  ',
//                                   style: labelTextStyle2,
//                                 ),
//                                 //Todo: This distance to be made dynamic
//                                 TextSpan(
//                                     text: "2,9 km",
//                                     style: buttonTextStyle2.copyWith(
//                                       color: Color(0XFF407ADE),
//                                     ))
//                               ]),
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 4.0,
//                         ),
//                         Row(
//                           children: <Widget>[
//                             //dentistTag
//                             Flexible(
//                               child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Color(0XFFE4EEFF).withOpacity(0.6),
//                                       borderRadius: BorderRadius.circular(5.0)),
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 8.0, right: 8.0),
//                                     child: Text(doctor.drType ?? 'Dentist',
//                                         style: buttonTextStyle2.copyWith(
//                                             color: Color(0XFF407ADE),
//                                             fontSize: 11,
//                                             fontWeight: FontWeight.w500)),
//                                   )),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               //THIRD ROW

//               Padding(
//                 padding: const EdgeInsets.only(right: 18.0, left: 80, top: 8),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     (consultation.consultationStatus ==
//                                 ConsultationStatus.closed.toString() ||
//                             consultation.consultationStatus ==
//                                 ConsultationStatus.inactive.toString())
//                         ? paymentNotDone()
//                         : paymentDone(),
//                     Row(
//                       children: [
//                         RichText(
//                           text: TextSpan(children: [
//                             TextSpan(
//                                 text: '', //"Time left:  ",
//                                 style: labelTextStyle2.copyWith(
//                                   fontSize: 13,
//                                 )),
//                             TextSpan(
//                                 text: '', //"00:00",
//                                 style: labelTextStyle2.copyWith(
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 12,
//                                     color: Colors.red))
//                           ]),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               //last row
//               Padding(
//                 padding: const EdgeInsets.only(right: 18.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     startButton(
//                       isDisabled: (consultation.consultationStatus ==
//                               ConsultationStatus.inactive.toString() ||
//                           consultation.consultationStatus ==
//                               ConsultationStatus.closed.toString()),
//                       ontap: onStartPressed,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           )),
//     );
//   }

//   startButton({ontap, isDisabled}) {
//     return FlatButton(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(25.0),
//         ),
//         color: (isDisabled) ? blueThemeColor.withOpacity(0.4) : blueThemeColor,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 0),
//           child: Text(
//             "Start",
//             textAlign: TextAlign.center,
//             style: appBarTextStyle.copyWith(
//               color: isDisabled ? Colors.white.withOpacity(0.4) : Colors.white,
//               letterSpacing: 1,
//               fontSize: 15,
//             ),
//           ),
//         ),
//         onPressed: isDisabled ? () {} : ontap);
//   }

//   paymentNotDone() {
//     return Row(
//       children: [
//         Icon(
//           Icons.info,
//           color: Colors.yellow,
//           size: 12,
//         ),
//         SizedBox(
//           width: 6.0,
//         ),
//         Text(
//           "Payment Pending",
//           style: labelTextStyle2.copyWith(
//               fontWeight: FontWeight.w500, color: Colors.yellow),
//         ),
//       ],
//     );
//   }

//   paymentDone() {
//     return Row(
//       children: [
//         ImageContainer(
//           assetImage: "assets/static_assets/success.png",
//           height: 11,
//           width: 11,
//         ),
//         SizedBox(
//           width: 6.0,
//         ),
//         Text(
//           "Payment done",
//           style: labelTextStyle2.copyWith(
//               fontWeight: FontWeight.w500, color: greenColor),
//         ),
//       ],
//     );
//   }
// }
