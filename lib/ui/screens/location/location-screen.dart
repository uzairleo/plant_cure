import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/services/location_service.dart';
import 'package:farmer_assistant_app/locator.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final _locationService = locator<LocationService>();
  bool isLocationReady = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,

      ///[body] is start from here
      ///
      body: !isLocationReady
          ? Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///
                ///heading with subtitle
                ///
                heading(),

                ///
                ///illustrations
                ///

                logo(context),

                ///
                /// button rows
                ///
                buttonRows(onAllowPressed: () async {
                  print("Location enabled");
                  // isLocationReady = false;
                  // try {
                  // await
                  _locationService.getCurrentLocation();
                  // isLocationReady = true;
                  // } catch (e) {
                  //   print("Exception while accessing location =>$e");
                  // }
                  // setState(() {});
                  Get.to(() => AddCropScreen());
                }, onSkipPressed: () {
                  print("Location Skiped");
                  Get.to(() => AddCropScreen());
                })
              ],
            ),
    ));
  }

  heading() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18, top: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Access to device location",
            style: headingTextStyle,
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 3,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "To provide you with localized content, We need access to your device location.",
            style: subBodyTextStyle,
          )
        ],
      ),
    );
  }

  ///
  ///illustrations
  ///

  logo(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageContainer(
            assetImage: "$assets/location_logo.png",
            height: 274.66.h,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }

  ///
  /// button rows
  ///
  buttonRows({onAllowPressed, onSkipPressed}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34, right: 20, left: 20, top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: onSkipPressed,
              child: Text(
                "Skip",
                style: buttonTextStyle.copyWith(color: mainThemeColor),
              )),
          Container(
            height: 39,
            child: RoundedRaisedButton(
              buttonText: "Allow",
              onPressed: onAllowPressed,
              color: mainThemeColor,
            ),
          ),
        ],
      ),
    );
  }
}
