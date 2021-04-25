// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/notification-mdoal.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';

// ///
// ///This is Notification Tile which we used for showing inbox notifications to user
// ///
// class NotificationTile extends StatelessWidget {
//   final NotificationModal notification;

//   NotificationTile({this.notification});
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {
//           Navigator.pushNamed(context, 'notification-Screen2');
//         },
//         child: Padding(
//           padding: const EdgeInsets.only(bottom: 4.0),
//           child: Container(
//               height: 74,
//               // width: Dimensions.width,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   SizedBox(
//                     width: 9.0,
//                   ),
//                   ImageContainer(
//                     width: 39,
//                     height: 39,
//                     assetImage: "assets/static_assets/inbox.png",
//                   ),
//                   SizedBox(
//                     width: 14.0,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           "Your transaction of 7.00 was successful",
//                           style: bodyTextStyle.copyWith(
//                               fontWeight: FontWeight.w500, fontSize: 12),
//                         ),
//                         Text(
//                           "Apr 10",
//                           style: bodyTextStyle.copyWith(
//                               color: greyColor,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Container(),
//                   Container(
//                     width: 6,
//                   ),
//                 ],
//               )),
//         ));
//   }
// }
