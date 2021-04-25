// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// ///
// ///This screen is used for forget passwrod screen or resetting password
// ///

// class ForgetPasswordScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         ///
//         ///[body] starts from here
//         ///
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 15, right: 15.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 //appbar
//                 appBarRow(onBackPressed: () {}),

//                 //email text field
//                 Padding(
//                     padding: EdgeInsets.only(top: 72, bottom: 56),
//                     child: emailTextField()),

//                 //note regarding otp
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(bottom: 56.0, left: 0, right: 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         child: Text(
//                             "We will send you a One-Time Password,"
//                             "go check your E-mail",
//                             textAlign: TextAlign.center,
//                             style: categoryTextStyle.copyWith(
//                               fontSize: 14,
//                             )),
//                       )
//                     ],
//                   ),
//                 ),

//                 //nextButton
//                 RoundedBlueButton(
//                   text: "Next",
//                   onPressed: () {},
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   emailTextField() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         ///
//         ///[email]
//         ///
//         Text(
//           "E-mail",
//           style: categoryTextStyle2.copyWith(color: Color(0XFF707070)),
//         ),
//         TextFormField(
//           onSaved: (value) {},
//           validator: (value) {
//             if (value.isEmpty) {
//               return "Please fill the field";
//             } else {
//               return null;
//             }
//           },
//           style: appBarTextStyle3,
//           textInputAction: TextInputAction.next,
//           keyboardType: TextInputType.text,
//           decoration: InputDecoration(
//               contentPadding: EdgeInsets.only(top: 18.0),
//               hintText: "Enter your email"),
//         ),
//       ],
//     );
//   }

//   appBarRow({onBackPressed}) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 12.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           InkWell(
//             onTap: onBackPressed,
//             child: Icon(
//               Icons.arrow_back_ios,
//               size: 20,
//             ),
//           ),
//           Text(
//             "Forgot password",
//             style: categoryTextStyle.copyWith(fontSize: 18),
//           ),
//           SizedBox(
//             width: 24,
//           )
//         ],
//       ),
//     );
//   }
// }
