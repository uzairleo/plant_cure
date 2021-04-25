// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';

// class PaginationBar extends StatefulWidget {
//   final ScrollController pageController;
//   final medicineList; //inside this list there must be a pageSelected field in each object of this list
//   PaginationBar({this.pageController, this.medicineList});
//   @override
//   _PaginationBarState createState() => _PaginationBarState();
// }

// class _PaginationBarState extends State<PaginationBar> {
//   bool pageSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ///
//         ///Left button
//         ///
//         IconButton(
//           icon: Icon(Icons.keyboard_arrow_left),
//           onPressed: () {
//             moveLeft();
//           },
//         ),

//         ///
//         ///Scrollable content
//         ///
//         Container(
//           padding: EdgeInsets.only(top: 1),
//           width: 140,
//           height: 28,
//           child: ListView.builder(
//               controller: widget.pageController,
//               itemExtent: 50,
//               shrinkWrap: true,
//               itemCount: 12, //list.length
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     print("no ${index + 1} selected");
//                     setState(() {
//                       pageSelected = !pageSelected;
//                     });
//                   },
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 12, right: 12),
//                     child: Container(
//                         height: 27,
//                         width: 27,
//                         decoration: BoxDecoration(
//                             color:
//                                 (pageSelected) ? blueThemeColor : Colors.white,
//                             borderRadius: BorderRadius.circular(5.0)),
//                         child: Center(
//                             child: Text(
//                           "${index + 1}",
//                           style: categoryTextStyle.copyWith(
//                               fontWeight: FontWeight.w600,
//                               color:
//                                   (pageSelected) ? Colors.white : Colors.grey),
//                         ))),
//                   ),
//                 );
//               }),
//         ),

//         ///
//         ///Right Button
//         ///
//         IconButton(
//           icon: Icon(Icons.keyboard_arrow_right),
//           onPressed: () {
//             moveRight();
//           },
//         ),
//       ],
//     );
//   }

//   moveLeft() {
//     widget.pageController.animateTo(
//       widget.pageController.offset - 50,
//       curve: Curves.easeOut,
//       duration: const Duration(milliseconds: 300),
//     );
//   }

//   moveRight() {
//     widget.pageController.animateTo(
//       widget.pageController.offset + 50,
//       curve: Curves.easeOut,
//       duration: const Duration(milliseconds: 300),
//     );
//   }
// }
