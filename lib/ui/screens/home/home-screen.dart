import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Crop> addedCrops;
  HomeScreen({this.addedCrops});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,

            ///
            ///[body] start from here
            ///
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //weather and notification section cart with setting popup menu button as well
                  weatherAndNotifications(),

                  //added fruit list in horizntal view with edit button iconbutton
                  addedFruits(),

                  //fertilizer and pest cart with tiles
                  fertilizerAndPests(),

                  //check health card having check health button
                  checkHealthButton(),
                ],
              ),
            )));
  }

  //weather and notification section cart with setting popup menu button as well
  weatherAndNotifications() {
    return Container();
  }

  //added fruit list in horizntal view with edit button iconbutton
  addedFruits() {
    return Container();
  }

  //fertilizer and pest cart with tiles
  fertilizerAndPests() {
    return Container();
  }

  //check health card having check health button
  checkHealthButton() {
    return Container();
  }
}
