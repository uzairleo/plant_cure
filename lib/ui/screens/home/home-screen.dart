import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/home-crop-tile.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // final List<Crop> addedCrops;
  // HomeScreen({this.addedCrops});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ));
  }

  //weather and notification section cart with setting popup menu button as well
  weatherAndNotifications() {
    return Container(
      // height: 222.h,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          spreadRadius: 1.2,
          blurRadius: 8,
          offset: Offset(0, -4),
        ),
      ]),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 51.0, left: 15, right: 15, bottom: 9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //app bar row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Farmer Assistant",
                  style: headingTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        icon: ImageContainer(
                          assetImage: "$assets/notification.png",
                          height: 22.87.h,
                          width: 20.53.w,
                        ),
                        onPressed: () {
                          print("notification pressed");
                        }),
                    IconButton(
                        padding: EdgeInsets.zero,
                        icon: ImageContainer(
                          assetImage: "$assets/more_vertical.png",
                          height: 19.h,
                          width: 5.w,
                        ),
                        onPressed: () {
                          print("more_vertical pressed");
                        }),
                  ],
                )
              ],
            ),

            SizedBox(
              height: 47.h,
            ),
            //weather and info row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today, 24 Jan",
                        style: bodyTextStyle.copyWith(
                          fontSize: 14.sp,
                          color: Color(0XFF777171),
                        )),
                    Text(
                      "24 °C",
                      style: headingTextStyle.copyWith(
                          fontSize: 32.sp, fontWeight: FontWeight.w600),
                    ),
                    Text("Sunset",
                        style: bodyTextStyle.copyWith(
                          fontSize: 14.sp,
                          color: Color(0XFF777171),
                        )),
                  ],
                ),
                ImageContainer(
                  assetImage: "$assets/sun.png",
                  height: 100.h,
                  width: 99.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //added fruit list in horizntal view with edit button iconbutton
  addedFruits() {
    return Container(
      height: 136.h,
      child: Row(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return HomeCropTile();
              }),
          //Edit button
          IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.edit, color: mainThemeColor),
              onPressed: () {
                print("Edit button pressed");
              })
        ],
      ),
    );
  }

  //fertilizer and pest cart with tiles
  fertilizerAndPests() {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 21, 12, 21),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //fertilizer calculator tile
          tile(
              color: Colors.red.withOpacity(0.4),
              icon: ImageContainer(
                assetImage: "$assets/fertilizer_calc.png",
                height: 25.w,
                width: 27.h,
              ),
              label: "Fertilizer Calculator",
              ontap: () {
                print("Fertilizer pressed");
              }),
          SizedBox(
            height: 16.0,
          ),
          //pests and disease tile
          tile(
              color: Colors.red.withOpacity(0.4),
              icon: ImageContainer(
                assetImage: "$assets/pest_disease.png",
                height: 25.w,
                width: 27.h,
              ),
              label: "Pests & Disease",
              ontap: () {
                print("Pests & Disease pressed");
              })
        ],
      ),
    );
  }

  tile({ontap, label, color, icon}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 83.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            SizedBox(
              width: 19.w,
            ),
            Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.4), shape: BoxShape.circle),
              child: Center(child: icon),
            ),
            SizedBox(
              width: 19.w,
            ),
            //text
            Text(
              "$label",
              style: bodyTextStyle.copyWith(
                  fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  //check health card having check health button
  checkHealthButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.only(top: 15.0, bottom: 17.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CHECK HEALTH",
              style: headingTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, right: 44),
              child: Container(
                height: 44.h,
                child: RaisedButton(
                  onPressed: () {},
                  color: mainThemeColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 19,
                          ),
                          SizedBox(
                            width: 24.2,
                          ),
                          Text(
                            'Take a picture',
                            style: buttonTextStyle.copyWith(
                                fontSize: 15.sp, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
