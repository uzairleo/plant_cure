import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,

      ///
      ///[body] start from here
      ///
      body: Center(
        child: Text("Community..."),
      ),
    ));
  }
}
