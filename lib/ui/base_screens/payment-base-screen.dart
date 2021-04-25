// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/custom-app-bar.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/elevated-container.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// ///
// ///This is base screen used for payment final screen purpose whenever user want to pay to admin for any of the
// ///mentioned services
// ///
// ///

// class PaymentBaseScreen extends StatelessWidget {
//   final paypalAccount;
//   final totalAmount;
//   final payBeforeTime;
//   final payBeforeDate;
//   final notes;
//   final isConsultationPayment;
//   final onOkPressed;
//   final onChangePaymentPressed;
//   final phoneNumber;

//   PaymentBaseScreen(
//       {this.paypalAccount,
//       this.totalAmount,
//       this.payBeforeDate,
//       this.phoneNumber,
//       this.payBeforeTime,
//       this.notes,
//       this.isConsultationPayment = false,
//       this.onChangePaymentPressed,
//       this.onOkPressed});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: backgroundColor2,

//           ///
//           ///[custom-app-bar] starts from here
//           ///
//           appBar: CustomAppBar(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 IconButton(
//                     icon: Icon(
//                       Icons.keyboard_arrow_left,
//                       size: 30.0,
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       Navigator.of(context).pop();
//                     }),
//                 // Container(),
//                 Text("Payment", style: appBarTextStyle),
//                 // Container(),
//                 Container(
//                   width: 50,
//                 ),
//               ],
//             ),
//           ),

//           ///
//           ///[body] starts from here
//           ///
//           body: Stack(
//             children: [
//               SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 180.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: <Widget>[
//                       ////
//                       ///Payment information
//                       ///
//                       Padding(
//                           padding: EdgeInsets.only(top: 20, bottom: 23),
//                           child: paymentInformation()),

//                       ///
//                       ///Pay before tag or card
//                       ///
//                       payBeforeTag(),

//                       ///
//                       ///Notes Section card or tag
//                       ///
//                       Padding(
//                           padding: EdgeInsets.only(top: 22),
//                           child: noteSection()),
//                     ],
//                   ),
//                 ),
//               ),

//               ///
//               ///Bottom buttons => ok and  change payment methods
//               ///
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: (bottomButtons(context)))
//             ],
//           )),
//     );
//   }

//   ////
//   ///Payment information
//   ///
//   paymentInformation() {
//     return ElevatedContainer(
//       padding: EdgeInsets.only(left: 15, top: 15, right: 35, bottom: 22),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Text((this.isConsultationPayment) ? "MPESA" : "Paypal account",
//               style: categoryTextStyle2),
//           Padding(
//             padding: const EdgeInsets.only(top: 14.0),
//             child: Text(
//                 (this.isConsultationPayment)
//                     ? "${this.phoneNumber ?? "-"}"
//                     : "${this.paypalAccount ?? ''}",
//                 style: subHeadingTextStyle.copyWith(
//                     fontWeight: FontWeight.w600, color: blueThemeColor)),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 47.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(
//                   "Total",
//                   style: categoryTextStyle2,
//                 ),
//                 Text(
//                   "\$${this.totalAmount ?? ''}",
//                   style: subHeadingTextStyle.copyWith(
//                       fontWeight: FontWeight.w600, color: blueThemeColor),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///Pay before tag or card
//   ///
//   payBeforeTag() {
//     return ElevatedContainer(
//       padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text(
//             "Pay before",
//             style: categoryTextStyle2,
//           ),
//           // date
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(right: 17.0),
//                 child: Text(
//                   this.payBeforeDate ?? '-',
//                   // "03-04-2020",
//                   style: categoryTextStyle,
//                 ),
//               ),
//               //time
//               Text(
//                 this.payBeforeTime ?? '-',
//                 // "04:30PM",
//                 style: categoryTextStyle,
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///Notes Section card or tag
//   ///
//   noteSection() {
//     return ElevatedContainer(
//         padding: EdgeInsets.only(left: 15, right: 15, top: 17, bottom: 28),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             RichText(
//               text: TextSpan(children: [
//                 TextSpan(
//                   text: "NOTES",
//                   style: categoryTextStyle.copyWith(fontSize: 14),
//                 ),
//                 TextSpan(
//                   text: "*",
//                   style: categoryTextStyle2.copyWith(
//                       color: Color(0XFFFF4A4A), fontSize: 14),
//                 ),
//               ]),
//             ),
//             Text(
//               this.notes ?? '',
//               // "please check the email if you have already made the payment",
//               // textAlign: TextAlign.justify,
//               style: categoryTextStyle.copyWith(fontSize: 14),
//             )
//           ],
//         ));
//   }

//   bottomButtons(context) {
//     return Container(
//       height: 159,
//       child: ElevatedContainer(
//         child: Padding(
//           padding: const EdgeInsets.only(
//               left: 15.0, right: 15.0, top: 16, bottom: 20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               FlatButton(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25.0),
//                   ),
//                   color: greyColor.withOpacity(0.6),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Text(
//                       "Change payment method",
//                       textAlign: TextAlign.center,
//                       style: appBarTextStyle.copyWith(color: Colors.white),
//                     ),
//                   ),
//                   onPressed: onChangePaymentPressed),
//               Container(),
//               RoundedBlueButton(text: "OK", onPressed: onOkPressed)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
