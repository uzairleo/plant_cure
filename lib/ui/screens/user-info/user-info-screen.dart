import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/alert_dailogs/rate-us-dialog.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class UserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,

          ///
          ///[body] start from here
          ///
          body: Column(
            children: [
              //appbar tile
              appBar(),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 32.0),
                child: Column(
                  children: [
                    //grow with us tile
                    utilityTile(
                        title: "Grow with us!",
                        subtitle:
                            "Share Farmer Assistant and help farmers to solve their problems",
                        asset: "f_logo.png",
                        buttonText: "Share us",
                        ontap: () {
                          print("Share us pressed");
                          Share.share(
                              'check out our app https://farmerAssistant.com/downloads/farmer_assistant.apk',
                              subject:
                                  'Improve your farming. Crop disease detector App');
                        }),
                    SizedBox(
                      height: 28.0,
                    ),

                    //we like u alot tile
                    utilityTile(
                        title: "We like you a alot",
                        subtitle:
                            "If you are feeling the same then you can give your precious feedback",
                        asset: "rate_us.png",
                        buttonText: "Rate us",
                        ontap: () {
                          print("Rate us pressed");
                          Get.dialog(RateUsDialog());
                        }),
                  ],
                ),
              )
            ],
          )),
    );
  }

  utilityTile({asset, title, subtitle, ontap, buttonText}) {
    return BouncingWidget(
      duration: Duration(milliseconds: 100),
      scaleFactor: 1.5,
      onPressed: ontap,
      child: Container(
        height: 129.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 8,
                offset: Offset(0, 4),
                spreadRadius: 1.8,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 22,
            right: 30,
          ),
          child: Row(
            children: [
              //iamge
              ImageContainer(
                assetImage: "$assets/$asset",
                height: 54.h,
                width: 54.w,
              ),
              SizedBox(
                width: 12.w,
              ),
              //title subtitle and button
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$title",
                      style: headingTextStyle.copyWith(fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "$subtitle",
                      style: headingTextStyle.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "$buttonText",
                          style: bodyTextStyle.copyWith(
                              fontSize: 15.sp,
                              color: mainThemeColor,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Farmer Assistant",
                style: headingTextStyle.copyWith(
                  fontSize: 18,
                )),
          ],
        ),
      ),
    );
  }
}
