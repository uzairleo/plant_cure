// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/core/enums/view-state.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/invite-friend-tile.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// import 'invite-friend-view-model.dart';

// ///
// ///Invite friend screen initial view is a screen using which user can add / invite other friend or send request
// ///

// class InviteFriendScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => InviteFriendViewModel(),
//       child: Consumer<InviteFriendViewModel>(
//           builder: (context, model, child) => ModalProgressHUD(
//                 inAsyncCall: model.state == ViewState.loading,
//                 child: SafeArea(
//                   child: Scaffold(
//                     resizeToAvoidBottomInset: false,
//                     backgroundColor: backgroundColor,

//                     ///
//                     ///[body] starts from here
//                     ///
//                     body: SingleChildScrollView(
//                       physics: BouncingScrollPhysics(),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           left: 15,
//                           right: 15,
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             ///
//                             ///back button for popping
//                             ///
//                             backButton(),

//                             heading(),

//                             ///
//                             ///listview builder of invite friend list tiles
//                             // ///
//                             Container(
//                               // padding: EdgeInsets.only(),
//                               height: MediaQuery.of(context).size.height,
//                               child: ListView.builder(
//                                   padding: EdgeInsets.only(
//                                       bottom: 200,
//                                       right: 4.0,
//                                       left: 4.0,
//                                       top: 8),
//                                   shrinkWrap: true,
//                                   itemCount: 14,
//                                   // primary: true,
//                                   physics: BouncingScrollPhysics(),
//                                   itemBuilder: (context, index) =>
//                                       InviteFriendTile()),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )),
//     );
//   }

//   ///
//   ///heading of invite friends
//   ///
//   heading() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20, bottom: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text(
//             "Invite Friends",
//             style: headingTextStyle.copyWith(fontSize: 36),
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///back button for popping
//   ///
//   backButton() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           GestureDetector(
//             onTap: () {
//               print("BackButtonPressed");
//             },
//             child: ImageContainer(
//               assetImage: "assets/static_assets/back_button.png",
//               height: 20,
//               width: 10,
//             ),
//           ),
//           GestureDetector(
//               onTap: () {},
//               child: Text(
//                 "NEXT",
//                 style: subBodyTextStyle.copyWith(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 15,
//                     color: Color(0XFFF8607B)),
//               ))
//         ],
//       ),
//     );
//   }
// }
