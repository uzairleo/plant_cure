// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/dimensions.dart';

// /// This is a CustomAppBar which is used in almost 9 screens
// /// i make this as a Customwidget because of a reason that is in all of these
// /// 9 screens the upper header is same only the body is different so instead of creating
// /// the upper pinned header everyWhere again and again i choose to create its base
// /// widget and interact with these 9 screens using this widget
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final Widget child;
//   CustomAppBar({this.child});
//   @override
//   Size get preferredSize => Size.fromHeight(60);
//   @override
//   Widget build(BuildContext context) {
//     Dimensions.width = MediaQuery.of(context).size.width;
//     return Container(
//       width: Dimensions.width,
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey[200],
//             blurRadius: 6, // has the effect of softening the shadow
//             spreadRadius: 1.4, // has the effect of extending the shadow
//             offset: Offset(
//               0, // horizontal, move right 10
//               0.6, // vertical, move down 10
//             ),
//           )
//         ],
//         color: Colors.white,
//       ),
//       child: Container(
//         padding: EdgeInsets.only(left: 14.0, right: 14.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[child],
//         ),
//       ),
//     );
//   }
// }
