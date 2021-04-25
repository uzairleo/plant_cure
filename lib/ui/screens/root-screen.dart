// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/alert_dailogs/call-review-dialog.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/alert_dailogs/cancel-consultation-dialog.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';
// import 'package:ponansasa_patient_app/ui/screens/home/home-dashboard-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/others/others-dashboard-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/profile/user-profile/profile-screen.dart';

// ///
// ///This is a [root-screen] of app for integrating the bottom-navigation bar and showing other screens
// ///
// class RootScreen extends StatefulWidget {
//   final int index;
//   RootScreen({this.index = 1});
//   @override
//   _RootScreenState createState() => _RootScreenState();
// }

// class _RootScreenState extends State<RootScreen> {
//   /// or accessing selected bottom navigation bar item
//   var selectedIndex = 1;

//   ///for putting a list of screens to bottom naviagtion bar childrens
//   List<Widget> bottomAppBarScreens = <Widget>[
//     //profile screen
//     //profile section screens
//     ProfileScreen(),

//     //Home Screen
//     HomeDashboardScreen(),

//     //Setting screen
//     OthersDashboardScreen(),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     selectedIndex = widget.index;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: _onBackPressed,
//       child: Scaffold(
//         ///
//         ///passing my all [screens] in root screen body
//         ///
//         body: bottomAppBarScreens.elementAt(selectedIndex),

//         ///
//         ///[BNB] bottom navigation bar for multiple screen access from dashboard
//         ///
//         bottomNavigationBar: BottomNavigationBar(
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: (selectedIndex != 0)
//                     ? ImageContainer(
//                         assetImage: "assets/static_assets/profile1.png",
//                         height: 30,
//                         width: 30,
//                       )
//                     : ImageContainer(
//                         assetImage: "assets/static_assets/profile2.png",
//                         height: 30,
//                         width: 30,
//                       ),
//                 // Icon(Icons.supervised_user_circle),
//                 title: Text('profile'),
//               ),
//               BottomNavigationBarItem(
//                 icon: (selectedIndex == 1)
//                     ? ImageContainer(
//                         assetImage: "assets/static_assets/home1.png",
//                         height: 22,
//                         width: 22,
//                       )
//                     : ImageContainer(
//                         assetImage: "assets/static_assets/home2.png",
//                         height: 22,
//                         width: 22,
//                       ),
//                 title: Text('Home'),
//               ),
//               BottomNavigationBarItem(
//                 icon: (selectedIndex == 2)
//                     ? ImageContainer(
//                         assetImage: "assets/static_assets/others2.png",
//                         height: 28,
//                         width: 28,
//                       )
//                     : ImageContainer(
//                         assetImage: "assets/static_assets/others1.png",
//                         height: 28,
//                         width: 28,
//                       ),
//                 title: Text('Others'),
//               ),
//             ],
//             type: BottomNavigationBarType.fixed,
//             //current screen index for accessing the right widget screen from the list
//             currentIndex: selectedIndex,
//             //selected item color
//             selectedItemColor: blueThemeColor,
//             //unselected item color
//             unselectedItemColor: Colors.black87,

//             ///
//             ///ontap [callback] for changing the current index of dashboard
//             ///
//             onTap: (index) {
//               _onItemTapped(index);
//             }),
//       ),
//     );
//   }

//   ///
//   ///on[ backpressed] call back to avoid user interaction with splash screen
//   ///
//   Future<bool> _onBackPressed() {
//     return showDialog(
//           context: context,
//           builder: (context) => new AlertDialog(
//             title: new Text('Are you sure?'),
//             content: new Text('Do you want to exit an App'),
//             actions: <Widget>[
//               new FlatButton(
//                 textColor: blueThemeColor,
//                 onPressed: () {
//                   Navigator.of(context).pop(false);
//                   // _updateConnectionFlag(true);
//                 },
//                 child: Text(
//                   "NO",
//                 ),
//               ),
//               SizedBox(height: 16),
//               new FlatButton(
//                 textColor: blueThemeColor,
//                 onPressed: () {
//                   exit(0);
//                 },
//                 child: Text("YES"),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }
// }
