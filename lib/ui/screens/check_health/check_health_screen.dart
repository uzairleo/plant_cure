import 'dart:io';

import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/check_health/check_health_view_model.dart';
import 'package:farmer_assistant_app/ui/screens/check_health/suggested_treatment/suggested_treatment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class CheckHealthScreen extends StatelessWidget {
  final File selectedFile;
  CheckHealthScreen(this.selectedFile);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckHealthViewModel(selectedFile, context),
      child: Consumer<CheckHealthViewModel>(
        builder: (context, model, child) => ModalProgressHUD(
          inAsyncCall: model.state == ViewState.loading,
          child: SafeArea(
            child: Scaffold(
              ////
              ///[body] start from here
              ///
              body: !model.isMlLoaded
                  ? Container()
                  : model.label == null
                      ? Padding(
                          padding:
                              const EdgeInsets.only(left: 18.0, right: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //text
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "No label is available for this image in ML model try again please..",
                                      textAlign: TextAlign.center,
                                      style: bodyTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 100.h,
                              ),
                              RoundedRaisedButton(
                                buttonText: "Try Again",
                                onPressed: () {
                                  Get.back();
                                },
                                color: mainThemeColor,
                              )
                            ],
                          ),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              //image container with back button on stact
                              topBar(),

                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Column(
                                  children: [
                                    //about disease title,definition
                                    aboutDisease(model),
                                    model.label == "Healthy (Apple)" ||
                                            model.label == "Healthy (Peach)"
                                        ? Container()
                                        :
                                        //about symptom and other cause having title and description
                                        symptoms(model),

                                    model.label == "Healthy (Apple)" ||
                                            model.label == "Healthy (Peach)"
                                        ? Container()
                                        :
                                        //suggested treatment button
                                        suggestedTreatmentButton(model),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
            ),
          ),
        ),
      ),
    );
  }

  suggestedTreatmentButton(CheckHealthViewModel model) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 24, bottom: 32.0, left: 20, right: 20),
      child: RoundedRaisedButton(
        buttonText: "Suggested Treatment",
        color: mainThemeColor,
        onPressed: () {
          if (model.disease != null) {
            Get.to(() => SuggestedTreatmentScreen(model.disease));
          }
        },
      ),
    );
  }

  //image container with back button on stact
  topBar() {
    return Stack(
      children: [
        Container(
            height: 328.h,
            width: double.infinity.w,
            child: Image(
              fit: BoxFit.cover,
              image: FileImage(this.selectedFile),
            )),
        //  Image.asset('$assets/d_crop.png')),
        //
        Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: () {
              Get.back();
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 21, left: 24.0),
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: ImageContainer(
                    height: 18.h,
                    width: 18.w,
                    fit: BoxFit.contain,
                    assetImage: "$assets/close.png",
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  //about disease title,definition
  aboutDisease(CheckHealthViewModel model) {
    return Padding(
      padding: const EdgeInsets.only(top: 33, bottom: 20.0),
      child: Column(
        children: [
          //title
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${model.disease.disease ?? ""}",
                // "Shothole Disease",
                style: headingTextStyle.copyWith(
                  fontSize: 24,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${model.disease.aboutdisease ?? ""}",
                  // "Shot hole disease (also called Coryneum blight) is a  serious fungal disease that creates BB-sized holes in leaves,rough areas on fruit, and concentric lesions on branches. The pathogen that causes shot hole disease is Wilsonomyces carpophilus.",
                  style: bodyTextStyle.copyWith(
                      fontSize: 15, color: Color(0XFF373434)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //about symptom and other cause having title and description
  symptoms(CheckHealthViewModel model) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          //title
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Symptoms",
                style: headingTextStyle.copyWith(
                  fontSize: 24,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${model.disease.symptoms ?? ""}",
                  // "The fungal pathogen Wilsonomyces carpophilus affects members of the Prunus genera. Almond, apricot, nectarine, peach, prune and cherry trees can be affected. Both edible and ornamental varieties are vulnerable to Infection.[2] Almost all over-ground parts of the plants are affected including the fruits, buds and the stems, but the damage is most noticeable on the leaves.",
                  style: bodyTextStyle.copyWith(
                      fontSize: 15, color: Color(0XFF373434)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
