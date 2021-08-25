import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/locale-tile.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/localization/select-locale-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/location/location-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SelectLocaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectLocaleViewModel(),
      child: Consumer<SelectLocaleViewModel>(
        builder: (context, model, child) => SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,

            ///
            ///[body ]starts from here
            ///
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageContainer(
                        assetImage: '$assets/locale.png',
                        height: 226.h,
                        width: double.infinity.w,
                      ),
                    ],
                  ),
                ),

                ///
                ///locale list
                ///
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        model.localeList.length,
                        (index) => LocaleTile(model.localeList[index], () {
                              print("Locale Changed");
                              for (int i = 0;
                                  i < model.localeList.length;
                                  i++) {
                                if (i == index) {
                                  model.localeList[i].isSelected = true;
                                } else {
                                  model.localeList[i].isSelected = false;
                                }
                              }
                              model.setState(ViewState.idle);
                            }))),

                ///
                ///button accept card
                ///
                Container(
                  height: 100,
                ),

                //bottom card of accept or save changes
                Container(
                  color: Color(0XFFF0F3F5),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, bottom: 35, top: 28),
                  child: Row(
                    children: [
                      Expanded(
                          child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "I read and accept the ",
                              style: subBodyTextStyle.copyWith(
                                  color: Colors.black)),
                          TextSpan(
                              text: "terms of use ",
                              style: subBodyTextStyle.copyWith(
                                  color: mainThemeColor,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "and the ",
                              style: subBodyTextStyle.copyWith(
                                  color: Colors.black)),
                          TextSpan(
                              text: "privacy policy. ",
                              style: subBodyTextStyle.copyWith(
                                  color: mainThemeColor,
                                  fontWeight: FontWeight.w500)),
                        ]),
                      )),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 45,
                        child: RoundedRaisedButton(
                          buttonText: "Accept",
                          color: mainThemeColor,
                          onPressed: model.localeList[0].isSelected ||
                                  model.localeList[1].isSelected
                              ? () {
                                  print("Accept button pressed");
                                  if (model.localeList[0].isSelected) {
                                    print(
                                        "Locale Changed to ${model.localeList[0].label}}");
                                  } else {
                                    print(
                                        "Locale Changed to ${model.localeList[1].label}}");
                                  }

                                  Get.to(
                                    () => LocationScreen(),
                                  );
                                }
                              : null,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
