// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';

// class RoundedSearchBar extends StatelessWidget {
//   final hintText;
//   final onchanged;
//   RoundedSearchBar({this.hintText, this.onchanged});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(24.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey[200],
//               blurRadius: 4, // has the effect of softening the shadow
//               spreadRadius: 1.6, // has the effect of extending the shadow
//               offset: Offset(
//                 0, // horizontal, move right 10
//                 2.4, // vertical, move down 10
//               ),
//             )
//           ]),
//       child: TextFormField(
//         onChanged: onchanged,
//         decoration: InputDecoration(
//           suffixIcon: Icon(Icons.search),
//           hintText: hintText,
//           contentPadding: EdgeInsets.only(
//             top: 15.0,
//             left: 12.0,
//           ),
//           hintStyle: subHeadingTextStyle.copyWith(
//             fontSize: 12,
//             color: greyColor,
//           ),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
