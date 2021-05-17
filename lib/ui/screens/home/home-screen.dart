import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,

      ///
      ///[body] start from here
      ///
      body: Center(
        child: Text("home..."),
      ),
    ));
  }
}
