// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/custom-wheel-chooser.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';

// typedef OnClosed = void Function(String date);

// class DateBottomSheet extends StatefulWidget {
//   final OnClosed onClosed;
//   DateBottomSheet({this.onClosed});
//   @override
//   _DateBottomSheetState createState() => _DateBottomSheetState();
// }

// class _DateBottomSheetState extends State<DateBottomSheet> {
//   List<String> months = [
//     "January",
//     "Febuary",
//     "March",
//     "April",
//     "May",
//     "June",
//     "July",
//     "August",
//     "September",
//     "October",
//     "November",
//     "December",
//   ];

//   List<String> days = List.generate(31, (index) => (index + 1).toString());

//   List<String> years = List.generate(
//       DateTime.now().year + 1 - 1970, (index) => (index + 1970).toString());

//   String month = "May";
//   int day = 05;
//   int year = 1974;

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
//                   // Container(),
//                   Expanded(
//                     flex: 2,
//                     child: SizedBox(
//                         height: 180,
//                         child: CustomWheelChooser(
//                             selectTextStyle: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 12),
//                             unSelectTextStyle: TextStyle(
//                                 fontWeight: FontWeight.w400, fontSize: 12),
//                             startingIndex: 4,
//                             data: months,
//                             onValueChanged: (value) {
//                               print(value);
//                               month = value;
//                             })),
//                   ),

//                   Expanded(
//                     flex: 2,
//                     child: SizedBox(
//                         height: 180,
//                         child: CustomWheelChooser(
//                             selectTextStyle: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 14),
//                             unSelectTextStyle: TextStyle(
//                                 fontWeight: FontWeight.w400, fontSize: 12),
//                             startingIndex: 4,
//                             data: days,
//                             onValueChanged: (value) {
//                               print(value);
//                               day = int.parse(value);
//                             })),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: SizedBox(
//                         height: 180,
//                         child: CustomWheelChooser(
//                           startingIndex: 4,
//                           selectTextStyle: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 14),
//                           unSelectTextStyle: TextStyle(
//                               fontWeight: FontWeight.w400, fontSize: 12),
//                           data: years,
//                           onValueChanged: (value) {
//                             print(value);
//                             year = int.parse(value);
//                           },
//                         )),
//                   ),
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
//                     int m;
//                     for (int i = 0; i < months.length; i++) {
//                       if (month == months[i]) {
//                         m = i + 1;
//                         print(i + 1);
//                       }
//                     }
//                     var date = "$year" + "-" + "$m" + "-" + "$day";

//                     print(date);
//                     widget.onClosed(date);
//                     Navigator.pop(context);
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
