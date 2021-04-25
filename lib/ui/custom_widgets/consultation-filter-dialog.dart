// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';

// ///
// ///A custom widget used as a Medicine filter Dialog box or popup but the custom one
// ///
// ///
// class ConsultationFilterDialog extends StatefulWidget {
//   @override
//   _ConsultationFilterDialogState createState() =>
//       _ConsultationFilterDialogState();
// }

// class _ConsultationFilterDialogState extends State<ConsultationFilterDialog> {
//   String dropdownValue1 = "1 year";
//   String dropdownValue2 = "01.00";
//   var sliderValue = 0.0;

//   double sliderHeight = 48;
//   int min = 10;
//   int max = 0;
//   var fullWidth = false;
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         height: 301,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.0), color: Colors.white),
//         child: Padding(
//           padding:
//               const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 28),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               //filter heading
//               Text(
//                 "Filter",
//                 style: buttonTextStyle2.copyWith(fontSize: 15),
//               ),
//               // Container(),
//               //price heading
//               Text(
//                 "Distance",
//                 style:
//                     categoryTextStyle.copyWith(color: greyColor, fontSize: 13),
//               ),
//               //custom price range selectable widget

//               SliderTheme(
//                 data: SliderTheme.of(context).copyWith(
//                   inactiveTrackColor: Colors.grey,
//                   thumbColor: blueThemeColor,
//                   trackHeight: 0.8,
//                   overlayColor: Colors.white.withOpacity(.4),
//                   // valueIndicatorColor: Colors.white,
//                   activeTickMarkColor: Colors.white,
//                   inactiveTickMarkColor: Colors.red.withOpacity(.7),
//                 ),
//                 child: Slider(
//                     divisions: 2,
//                     value: sliderValue,
//                     onChanged: (value) {
//                       setState(() {
//                         sliderValue = value;
//                       });
//                     }),
//               ),

//               Container(),

//               //filter drop down row
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   //tag or header
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Experience",
//                         style: categoryTextStyle2.copyWith(
//                           fontSize: 9.0,
//                         ),
//                       ),
//                       //DrowDown for Selecting filters
//                       Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(24)),
//                         child: Container(
//                           // width: 108,
//                           height: 39,
//                           padding: EdgeInsets.only(left: 14.0, right: 4.0),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(24),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[200],
//                                   blurRadius:
//                                       4, // has the effect of softening the shadow
//                                   spreadRadius:
//                                       1.6, // has the effect of extending the shadow
//                                   offset: Offset(
//                                     0, // horizontal, move right 10
//                                     3.0, // vertical, move down 10
//                                   ),
//                                 )
//                               ]),
//                           child: DropdownButtonHideUnderline(
//                             child: DropdownButton<String>(
//                               dropdownColor: Colors.white,
//                               style: categoryTextStyle.copyWith(fontSize: 10),
//                               value: dropdownValue1,
//                               icon: Icon(Icons.keyboard_arrow_down),
//                               elevation: 0,
//                               onChanged: (String newValue) {
//                                 setState(() {
//                                   dropdownValue1 = newValue;
//                                 });
//                               },
//                               items: <String>[
//                                 '1 year',
//                                 '2 year',
//                                 '3 year',
//                                 '4 year',
//                                 '5 year',
//                                 'Over 10 years',
//                               ].map<DropdownMenuItem<String>>((String value) {
//                                 return DropdownMenuItem<String>(
//                                   value: value,
//                                   child: Text(
//                                     value,
//                                     style: categoryTextStyle,
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   //DrowDown for Selecting filters
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Cost",
//                         style: categoryTextStyle2.copyWith(
//                           fontSize: 9.0,
//                         ),
//                       ),
//                       //DrowDown for Selecting filters
//                       Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(24)),
//                         child: Container(
//                           // width: 108,
//                           height: 39,
//                           padding: EdgeInsets.only(left: 14.0, right: 4.0),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(24),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[200],
//                                   blurRadius:
//                                       4, // has the effect of softening the shadow
//                                   spreadRadius:
//                                       1.6, // has the effect of extending the shadow
//                                   offset: Offset(
//                                     0, // horizontal, move right 10
//                                     3.0, // vertical, move down 10
//                                   ),
//                                 )
//                               ]),
//                           child: DropdownButtonHideUnderline(
//                             child: DropdownButton<String>(
//                               dropdownColor: Colors.white,
//                               style: categoryTextStyle,
//                               value: dropdownValue2,
//                               icon: Icon(Icons.keyboard_arrow_down),
//                               elevation: 0,
//                               onChanged: (String newValue) {
//                                 setState(() {
//                                   dropdownValue2 = newValue;
//                                 });
//                               },
//                               items: <String>[
//                                 '01.00',
//                                 '02.00',
//                                 '03.00',
//                                 '04.00',
//                                 '05.00',
//                                 'Over 10',
//                               ].map<DropdownMenuItem<String>>((String value) {
//                                 return DropdownMenuItem<String>(
//                                   value: value,
//                                   child: Text(
//                                     value,
//                                     style: categoryTextStyle,
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Container(),

//               ///
//               ///[save] button for listening
//               ///
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Container(),
//                   RaisedButton(
//                     colorBrightness: Brightness.dark,
//                     color: blueThemeColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Save",
//                         style: categoryTextStyle.copyWith(
//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       print("save button pressed");
//                       Navigator.of(context).pop();
//                     },
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
