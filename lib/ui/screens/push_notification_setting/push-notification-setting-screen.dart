// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/strings.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/core/enums/view-state.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded-raised-button.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/text_fields/custom_textfield.dart';
// import 'package:ebuddy_networking_app/ui/screens/push_notification_setting/push-notification-setting-viewmodel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ///
// ///Push notification screen settings for turning on and off push notifications
// ///

// class PushNotificationSettingScreen extends StatefulWidget {
//   @override
//   _PushNotificationSettingScreenState createState() =>
//       _PushNotificationSettingScreenState();
// }

// class _PushNotificationSettingScreenState
//     extends State<PushNotificationSettingScreen> {
//   // final _authDataService = locator<AuthDataService>();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => PushNotificationViewModel(),
//       child: Consumer<PushNotificationViewModel>(
//           builder: (context, model, child) => ModalProgressHUD(
//                 inAsyncCall: model.state == ViewState.loading,
//                 child: SafeArea(
//                   child: Scaffold(
//                     backgroundColor: backgroundColor,

//                     ///
//                     ///[body] starts from here
//                     ///
//                     body: SingleChildScrollView(
//                       physics: BouncingScrollPhysics(),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                             left: 24.0, right: 15, bottom: 60),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: [
//                             ///
//                             ///back button for popping
//                             ///
//                             backButton(),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 10.0),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                                 children: [
//                                   ///
//                                   ///notification illustration
//                                   ///
//                                   notificationLogo(),

//                                   ///
//                                   ///create account heading and subtitle
//                                   ///
//                                   heading(),

//                                   ///
//                                   ///card having switched button
//                                   ///
//                                   switchButtonCard(model),
//                                 ],
//                               ),
//                             )
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
//   ///card having switched button
//   ///
//   switchButtonCard(PushNotificationViewModel model) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 56.0, bottom: 30),
//       child: Container(
//         height: 88,
//         decoration: BoxDecoration(
//             color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 22, right: 18),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Turn on notifications",
//                   style: GoogleFonts.quicksand()
//                       .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
//               //switch widget
//               Transform.scale(
//                   scale: 0.8,
//                   child: CupertinoSwitch(
//                       trackColor: subMainThemeColor.withOpacity(0.4),
//                       activeColor: subMainThemeColor,
//                       value: model.isNotificationOn,
//                       onChanged: (value) {
//                         model.setNotification(value);
//                       }))
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   ///
//   ///back button for popping
//   ///
//   backButton() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 21.0),
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
//           TextButton(
//               onPressed: () {},
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

//   ///
//   ///notificationLogo illustration
//   ///
//   notificationLogo() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 36, bottom: 45),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ImageContainer(
//             assetImage: "assets/static_assets/notification_logo.png",
//             height: 200,
//             width: 200,
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///create account heading and subtitle
//   ///
//   heading() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text("Turn on\nNotifications",
//             textAlign: TextAlign.center,
//             style: GoogleFonts.quicksand()
//                 .copyWith(fontSize: 40, fontWeight: FontWeight.bold)),
//         SizedBox(
//           height: 20,
//         ),
//         Text(
//           "Enable push notification so we  can send\n you personal news and updates",
//           textAlign: TextAlign.center,
//           style: GoogleFonts.quicksand().copyWith(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//               color: Colors.black.withOpacity(0.5)),
//         ),
//       ],
//     );
//   }
// }
