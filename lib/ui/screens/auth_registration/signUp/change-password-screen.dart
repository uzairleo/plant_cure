// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// ///
// ///This screen is used for resetting or changing password
// ///

// class ChangingPasswordScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         ///
//         ///[body] starts from here
//         ///
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 15.0,
//               right: 15,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 //appbar
//                 appBar(onBackPressed: () {
//                   Navigator.of(context).pop();
//                 }),

//                 //heading or tag
//                 Padding(
//                   padding: const EdgeInsets.only(top: 59),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Change your password?",
//                         style: categoryTextStyle.copyWith(fontSize: 14),
//                       ),
//                     ],
//                   ),
//                 ),

//                 //current and new password form
//                 Padding(
//                   padding: EdgeInsets.only(top: 51, bottom: 47),
//                   child: passwordForm(),
//                 ),

//                 //nextButton
//                 RoundedBlueButton(
//                   text: "Save",
//                   onPressed: () {},
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   passwordForm() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ///
//         ///[current-password ]
//         ///
//         Text(
//           "Current password",
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
//           obscureText: true,
//           textInputAction: TextInputAction.next,
//           keyboardType: TextInputType.text,
//           decoration: InputDecoration(
//               contentPadding: EdgeInsets.only(top: 18.0),
//               hintText: "Enter your password"),
//         ),

//         ///
//         ///[Confirm password]
//         ///
//         Padding(
//           padding: const EdgeInsets.only(top: 46.0),
//           child: Text(
//             "New password",
//             style: categoryTextStyle2.copyWith(color: Color(0XFF707070)),
//           ),
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
//           obscureText: true,
//           textInputAction: TextInputAction.next,
//           keyboardType: TextInputType.text,
//           decoration: InputDecoration(
//               contentPadding: EdgeInsets.only(top: 18.0),
//               hintText: "Confirm your password"),
//         ),
//       ],
//     );
//   }

//   appBar({onBackPressed}) {
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
//             "Verification",
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
