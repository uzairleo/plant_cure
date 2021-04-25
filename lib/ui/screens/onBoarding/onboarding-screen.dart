// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/dimensions.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/core/models/onboarding.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// // import 'package:get/get.dart';

// // import '../../../../locator.dart';

// ///
// ///This screen is used as landing screen or onboarding which will be shown to user after splash screen
// ///
// class OnBoardingScreen extends StatefulWidget {
//   @override
//   _OnBoardingScreenState createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   //for pageview builder purpose
//   int currentIndexPage;
//   PageController onboardController;
//   List<OnBoarding> onboardings = [];

//   @override
//   void initState() {
//     super.initState();
//     //injecting onboardings data
//     injectOnboardings();
//     onboardController = PageController(initialPage: 0);
//     currentIndexPage = 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: backgroundColor,

//         ///
//         ///[body] starts from here
//         ///
//         body:
//             // SingleChildScrollView(
//             //   physics: BouncingScrollPhysics(),
//             //   child: Padding(
//             //     padding: const EdgeInsets.only(
//             //       top: 37,
//             //     ),
//             // child:
//             Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             ///Page View builder having onboarding tiles
//             pageViewBuilder(),
//             //dot womb indicator and forward button row
//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 34.0, right: 34.0, bottom: 42),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   //womb like pageview indicator
//                   wombIndicator(),

//                   //forward button
//                   nextButton(ontap: () {
//                     print("forward button pressed");
//                     if (currentIndexPage < 3) {
//                       onboardController.nextPage(
//                           duration: Duration(milliseconds: 275),
//                           curve: Curves.easeInOut);
//                     } else {
//                       print("Navigate to next screen");
//                     }
//                   }),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       //   ),
//       // ),
//     );
//   }

//   ///Page View builder having onboarding assets
//   pageViewBuilder() {
//     return Container(
//       alignment: Alignment.center,
//       height: 600, //400,
//       child: PageView.builder(
//         controller: onboardController,
//         itemCount: onboardings.length,
//         physics: BouncingScrollPhysics(),
//         itemBuilder: (context, index) {
//           return onboardingTile(onboardings[index]);
//         },
//         //calling on pageChanged function to get index
//         onPageChanged: (int index) {
//           print(index);
//           setState(() {
//             currentIndexPage = index;
//           });
//         },
//       ),
//     );
//   }

//   //womb like pageview indicator
//   wombIndicator() {
//     return Container(
//       child: SmoothPageIndicator(
//         controller: onboardController,
//         count: 4,
//         effect: WormEffect(
//             dotColor: greyColor,
//             activeDotColor: mainThemeColor,
//             spacing: 6.0,
//             dotHeight: 8,
//             dotWidth: 8),
//       ),
//     );
//   }

//   //forward button
//   nextButton({ontap}) {
//     return InkWell(
//         onTap: ontap,
//         child: Container(
//           alignment: Alignment.center,
//           height: 34,
//           width: 34,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: mainThemeColor,
//           ),
//           child: ImageContainer(
//             assetImage: 'assets/static_assets/forward.png',
//             height: 12.54,
//             width: 18.24,
//           ),
//         ));
//   }

//   onboardingTile(OnBoarding onboard) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 100),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           //onboarding assets
//           Padding(
//             padding: const EdgeInsets.only(left: 30.0, right: 30),
//             child: ImageContainer(
//               width: onboard.dimensions.width,
//               height: onboard.dimensions.height,
//               assetImage: onboard.imageUrl,
//             ),
//           ),
//           //onboarding title

//           Padding(
//             padding: EdgeInsets.only(left: 10, right: 10, top: 30),
//             child: Text(
//               onboard.title,
//               textAlign: TextAlign.center,
//               style: headingTextStyle,
//             ),
//           ),
//           //onboarding content

//           Padding(
//             padding: const EdgeInsets.only(top: 39, left: 35, right: 35),
//             child: Text(
//               onboard.content,
//               textAlign: TextAlign.center,
//               style: subBodyTextStyle,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   injectOnboardings() {
//     onboardings.add(OnBoarding(
//         dimensions: Dimensions(height: 270.42, width: 338),
//         imageUrl: "assets/static_assets/onboarding_1.png",
//         title: "Find friends nearby",
//         content:
//             " Lorem Ipsum has been the industry's standard and dummy text ever since the 1500s, when an printer took a galley of type and ipsum."));

//     onboardings.add(OnBoarding(
//       dimensions: Dimensions(height: 281.78, width: 297.26),
//       imageUrl: "assets/static_assets/onboarding_2.png",
//       title: "Send Message ",
//       content:
//           " Lorem Ipsum has been the industry's standard and dummy text ever since the 1500s, when an printer took a galley of type and ipsum.",
//     ));
//     onboardings.add(OnBoarding(
//         dimensions: Dimensions(height: 248.92, width: 352.08),
//         imageUrl: "assets/static_assets/onboarding_3.png",
//         title: "Be together, anytime,\nanywhere",
//         content:
//             " Lorem Ipsum has been the industry's standard and dummy text ever since the 1500s, when an printer took a galley of type and ipsum."));

//     onboardings.add(OnBoarding(
//       dimensions: Dimensions(height: 230, width: 380),
//       imageUrl: "assets/static_assets/onboarding_4.png",
//       title: "Most Importantly \n have fun",
//       content:
//           " Lorem Ipsum has been the industry's standard and dummy text ever since the 1500s, when an printer took a galley of type and ipsum.",
//     ));
//   }
// }
