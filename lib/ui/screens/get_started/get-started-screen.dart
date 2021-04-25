// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded_button.dart';
// import 'package:ebuddy_networking_app/ui/screens/get_started/get-started-view-model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// ///
// ///Thsi screen will be shown after onboarding or splash screen it contain all login type options and sign in /registration option too
// ///
// class GetStartedScreen extends StatefulWidget {
//   @override
//   _GetStartedScreenState createState() => _GetStartedScreenState();
// }

// class _GetStartedScreenState extends State<GetStartedScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (context) => GetStartedViewModel(),
//         child: SafeArea(
//           child: Scaffold(
//               backgroundColor: backgroundColor,

//               ///
//               ///[body] starts from here
//               ///
//               body: Consumer<GetStartedViewModel>(
//                 builder: (context, model, child) => Stack(
//                   children: [
//                     //background image container that assets chane dynamically
//                     backgroundImage(context, model),

//                     //get started screen rest content
//                     // SingleChildScrollView(
//                     //   child:
//                     Padding(
//                       padding: const EdgeInsets.only(left: 30, right: 30),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.stretch,
//                             children: [
//                               //heading text
//                               heading(model),

//                               // content text
//                               content(model),
//                             ],
//                           ),

//                           Column(
//                             children: [
//                               //get started button for registration purpose
//                               getStartedButton(),
//                               SizedBox(
//                                 height: 15,
//                               ),
//                               //login button for authentication purpose
//                               loginButton(model),

//                               Padding(
//                                 padding: const EdgeInsets.only(top: 33.0),
//                                 child: Text(
//                                   "or continue with",
//                                   style: bodyTextStyle.copyWith(
//                                       fontSize: 18,
//                                       color: model.getStarted == 0
//                                           ? Colors.black
//                                           : Colors.white),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           // social button for authentication using other social media accounts
//                           socialButton(
//                               onGooglePressed: () {},
//                               onFbPressed: () {},
//                               onTwitterPressed: () {})
//                         ],
//                       ),
//                       // ),
//                     )
//                   ],
//                 ),
//               )),
//         ));
//   }

//   backgroundImage(context, model) {
//     return new Image(
//       image: AssetImage(
//           'assets/static_assets/getstarted_${model.getStarted.toString()}.png'),
//       fit: BoxFit.cover,
//       height: double.infinity,
//       width: double.infinity,
//       alignment: Alignment.center,
//       // loadingBuilder: (context,widget,imageChunkEvent)=>,
//       gaplessPlayback:
//           true, //this will avoid the first time white screen that can be shown while loading
//     );
//   }

//   //heading text
//   heading(model) {
//     return Text(
//       "Find new\nfriends nearby",
//       textAlign: TextAlign.left,
//       style: headingTextStyle.copyWith(
//           fontSize: 42,
//           color: model.getStarted == 0 ? Colors.black : Colors.white),
//     );
//   }

//   // content text
//   content(model) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 22.0),
//       child: Text(
//         "With millions of users all over the world, we give you the ability to connect with people no matterwhere you are.",
//         textAlign: TextAlign.start,
//         style: subBodyTextStyle.copyWith(
//             fontSize: 22,
//             color: model.getStarted == 0 ? Colors.black : Colors.white),
//       ),
//     );
//   }

//   //get started button for registration purpose
//   getStartedButton() {
//     return Container(
//       height: 50,
//       child: RaisedButton(
//         onPressed: () {},
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
//         padding: const EdgeInsets.all(0.0),
//         child: Ink(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Color(0xFFFC2D00),
//               Color(0xFFF6A18F),
//             ]),
//             borderRadius: BorderRadius.all(Radius.circular(80.0)),
//           ),
//           child: Container(
//             constraints: const BoxConstraints(
//                 minWidth: 88.0,
//                 minHeight: 36.0), // min sizes for Material buttons
//             alignment: Alignment.center,
//             child: Text(
//               'GET STARTED',
//               style: buttonTextStyle,
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   //login button for authentication purpose
//   loginButton(model) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//           height: 50,
//           child: RoundedButton(
//               color: model.getStarted == 0 ? mainThemeColor : Colors.white,
//               textColor: model.getStarted == 0 ? Colors.white : mainThemeColor,
//               text: "LOGIN",
//               onPressed: () {
//                 print("Login pressed");
//               }),
//         ),
//       ],
//     );
//   }

//   // social button for authentication using other social media accounts
//   socialButton({onGooglePressed, onFbPressed, onTwitterPressed}) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 55.0, right: 55),
//       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//         InkWell(
//           onTap: onGooglePressed,
//           child: ImageContainer(
//             height: 46,
//             width: 46,
//             assetImage: "assets/static_assets/google.png",
//           ),
//         ),
//         InkWell(
//           onTap: onFbPressed,
//           child: ImageContainer(
//             height: 46,
//             width: 46,
//             assetImage: "assets/static_assets/fb.png",
//           ),
//         ),
//         InkWell(
//           onTap: onTwitterPressed,
//           child: ImageContainer(
//             height: 46,
//             width: 46,
//             assetImage: "assets/static_assets/twitter.png",
//           ),
//         ),
//       ]),
//     );
//   }
// }
