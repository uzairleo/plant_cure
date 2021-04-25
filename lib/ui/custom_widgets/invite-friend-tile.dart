
// import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
// import 'package:flutter/material.dart';

// ///
// ///A custom widget that helps to send request to other friend in order to invite thhem
// ///
// class InviteFriendTile extends StatefulWidget {
//   // InviteFriend inviteFriend;
//   // InviteFriendTile({this.inviteFriend});
//   @override
//   _InviteFriendTileState createState() => _InviteFriendTileState();
// }

// class _InviteFriendTileState extends State<InviteFriendTile> {
//   var isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20.0),
//       child: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             //first row having tile
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 //avatar widget
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(100.0),
//                   child: ImageContainer(
//                     assetImage: "$assets/avatar.png",
//                     height: 54,
//                     width: 54,
//                   ),
//                 ),
//                 //title subtitle widget
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Sue Coldwell",
//                       style: headingTextStyle.copyWith(
//                           fontSize: 18, fontWeight: FontWeight.w500),
//                     ),
//                     Text(
//                       "You are friend on Instagram",
//                       style: headingTextStyle.copyWith(
//                           fontSize: 14,
//                           color: Colors.black.withOpacity(0.4),
//                           fontWeight: FontWeight.normal),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   width: 14,
//                 ),
//                 //add toggle button
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isSelected = !isSelected;
//                     });
//                   },
//                   child: ImageContainer(
//                     assetImage:
//                         isSelected ? "$assets/done.png" : "$assets/invite.png",
//                     height: 29,
//                     width: 29,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 11,
//             ),
//             //second row having divider
//             Divider(
//               color: Colors.black.withOpacity(0.2),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
