// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/custom-wheel-chooser.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// typedef OnClosed = void Function(String height);

// class SelectNumberBottomSheet extends StatefulWidget {
//   final OnClosed onClosed;
//   SelectNumberBottomSheet({this.onClosed});

//   @override
//   _SelectNumberBottomSheetState createState() =>
//       _SelectNumberBottomSheetState();
// }

// class _SelectNumberBottomSheetState extends State<SelectNumberBottomSheet> {
//   List<String> numbers = List.generate(51, (index) => (index + 1).toString());

//   double number = 5.0;

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
//                             startingIndex: 4,
//                             data: numbers,
//                             onValueChanged: (value) {
//                               print(value);
//                               number = double.parse(value);
//                             })),
//                   ),
//                   // Expanded(
//                   //   flex: 1,
//                   //   child: Text(""),
//                   // )
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
//                     var h = "$number";
//                     print(h);
//                     widget.onClosed(h);
//                     Navigator.pop(context);
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
