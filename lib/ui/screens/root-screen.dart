import 'dart:io';

import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/ui/screens/community/community-screen.dart';
import 'package:farmer_assistant_app/ui/screens/home/home-screen.dart';
import 'package:farmer_assistant_app/ui/screens/user-info/user-info-screen.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

///
///This is a [root-screen] of app for integrating the bottom-navigation bar and showing other screens
///
class RootScreen extends StatefulWidget {
  final int index;
  RootScreen({this.index = 0});
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  /// or accessing selected bottom navigation bar item
  var selectedIndex = 0;

  ///for putting a list of screens to bottom naviagtion bar childrens
  List<Widget> bottomAppBarScreens = <Widget>[
    HomeScreen(),
    CommunityScreen(),
    UserInfoScreen(),
  ];
  // double _height;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
          backgroundColor: backgroundColor,

          ///
          ///passing my all [screens] in root screen body
          ///
          body: bottomAppBarScreens.elementAt(selectedIndex),

          ///
          ///[BNB] bottom navigation bar for multiple screen access from dashboard
          ///
          bottomNavigationBar: FluidNavBar(
            icons: [
              FluidNavBarIcon(
                  svgPath: "$assets/bottom-nav-bar/home.svg",
                  selectedForegroundColor: mainThemeColor), // (3)
              FluidNavBarIcon(
                svgPath: "$assets/bottom-nav-bar/comment.svg",
              ),
              FluidNavBarIcon(
                svgPath: "$assets/bottom-nav-bar/user.svg",
              ),
            ],
            style: FluidNavBarStyle(iconSelectedForegroundColor: mainThemeColor
                // barBackgroundColor: backgroundColor,
                // iconBackgroundColor: backgroundColor
                ),
            onChange: _onItemTapped,
          )),
    );
  }

  ///
  ///on[ backpressed] call back to avoid user interaction with splash screen
  ///
  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                textColor: mainThemeColor,
                onPressed: () {
                  Navigator.of(context).pop(false);
                  // _updateConnectionFlag(true);
                },
                child: Text(
                  "NO",
                ),
              ),
              SizedBox(height: 16),
              new FlatButton(
                textColor: mainThemeColor,
                onPressed: () {
                  exit(0);
                },
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
