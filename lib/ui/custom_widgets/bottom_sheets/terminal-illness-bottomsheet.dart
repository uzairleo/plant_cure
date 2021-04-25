// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/custom-wheel-chooser.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// typedef OnClosed = void Function(String bloodType);

// class TerminalIllnessBottomSheet extends StatefulWidget {
//   final OnClosed onClosed;
//   TerminalIllnessBottomSheet({this.onClosed});

//   @override
//   _TerminalIllnessBottomSheetState createState() =>
//       _TerminalIllnessBottomSheetState();
// }

// class _TerminalIllnessBottomSheetState
//     extends State<TerminalIllnessBottomSheet> {
//   List<String> bloodTypes = ["YES", "NO"];

//   String bloodType = "YES";

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       color: Color(0xFF757575),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20.0),
//             topRight: Radius.circular(20.0),
//           ),
//           color: Colors.white,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 12.0, right: 8.0, top: 8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Expanded(
//                     flex: 1,
//                     child: SizedBox(
//                         height: 180,
//                         child: CustomWheelChooser(
//                             selectTextStyle: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 14),
//                             unSelectTextStyle: TextStyle(
//                                 fontWeight: FontWeight.w400, fontSize: 12),
//                             startingIndex: 0,
//                             data: bloodTypes,
//                             onValueChanged: (value) {
//                               print(value);
//                               bloodType = value;
//                             })),
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Text("Have Terminal Illness"),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 15, right: 15.0, bottom: 18.0),
//               child: RoundedBlueButton(
//                   text: "OK",
//                   onPressed: () {
//                     var w = "$bloodType";
//                     print(w);
//                     widget.onClosed(w);
//                     Navigator.pop(context);
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }