import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/screen-util.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,

            ///
            ///[body] start from here
            ///
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///appbar area
                appBar(),
                Column(
                  children: [
                    //text of under construnction
                    Text(
                      "Under construction ...",
                      style: bodyTextStyle.copyWith(
                        fontSize: 18.sp,
                        //  fontFamily: 'OpenSans'
                      ),
                    ),
                    //illustration of this screen
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15.0, top: 85.0),
                      child: ImageContainer(
                        assetImage: "$assets/community.png",
                        width: double.infinity,
                        height: 160.74.h,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 95.h,
                ),
              ],
            )));
  }

  appBar() {
    return Container(
      height: 64.h,
      width: Get.size.width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 8,
            color: Colors.grey.withOpacity(0.8),
            offset: Offset(0, -4),
            spreadRadius: 1.2)
      ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Community",
                style: headingTextStyle.copyWith(
                  fontSize: 18,
                )),
            IconButton(
                padding: EdgeInsets.zero,
                icon: Text(""),
                //  ImageContainer(
                //   assetImage: "$assets/more_vertical.png",
                //   height: 19.h,
                //   width: 5.w,
                // ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
