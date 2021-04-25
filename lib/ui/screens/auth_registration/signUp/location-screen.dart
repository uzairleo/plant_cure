// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// ///
// ///This screen is used for your mobile connectivity status like turning on and off the location of smartphones
// ///

// class LocationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         ///
//         ///[body] of app starts from here
//         ///
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 top: 66, bottom: 220, left: 15, right: 15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 ///
//                 ///png image showing location turn on or off
//                 ///
//                 locationImage(),

//                 ///
//                 ///location and address buttons
//                 ///
//                 Padding(
//                     padding: EdgeInsets.only(top: 33.4, bottom: 67),
//                     child: locationAdressButtons()),

//                 ///
//                 ///next button
//                 ///
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

//   ///
//   ///png image showing location turn on or off
//   ///
//   locationImage() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         ImageContainer(
//           assetImage: "assets/static_assets/locationTurnOn.png",
//           height: 215.58,
//           width: 234,
//         ),
//       ],
//     );
//   }

//   ///
//   ///location and address buttons
//   ///
//   locationAdressButtons() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         ///turn on location button
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             InkWell(
//               borderRadius: BorderRadius.circular(25.0),
//               onTap: () {
//                 print("turn location on off");
//               },
//               child: Container(
//                 padding:
//                     EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
//                 decoration: BoxDecoration(
//                     border: Border.all(color: blueThemeColor),
//                     borderRadius: BorderRadius.circular(25.0)),
//                 child: Center(
//                   child: Text(
//                     "Turn on location",
//                     style: appBarTextStyle3.copyWith(color: blueThemeColor),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 13, bottom: 13.0),
//           child: Text(
//             "Or",
//             style: categoryTextStyle.copyWith(fontSize: 14),
//           ),
//         ),

//         ///add address button
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             InkWell(
//               borderRadius: BorderRadius.circular(25.0),
//               onTap: () {
//                 print("Add address");
//               },
//               child: Container(
//                 padding:
//                     EdgeInsets.only(left: 34, right: 34, top: 10, bottom: 10),
//                 decoration: BoxDecoration(
//                     border: Border.all(color: blueThemeColor),
//                     borderRadius: BorderRadius.circular(25.0)),
//                 child: Center(
//                   child: Text(
//                     "Add address",
//                     style: appBarTextStyle3.copyWith(color: blueThemeColor),
//                   ),
//                 ),
//               ),
//             ),

//             ///add adress buttton
//           ],
//         ),
//       ],
//     );
//   }
// }
