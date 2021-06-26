import 'dart:io';

import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/alert_dailogs/image-success-dialog.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/bottom_sheets/image-picker-bottom-sheet.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/home-crop-tile.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-screen.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/edit_crop/edit-crop-screen.dart';
import 'package:farmer_assistant_app/ui/screens/check_health/check_health_screen.dart';
import 'package:farmer_assistant_app/ui/screens/home/home-view-modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final List<Crop> addedCrops;
  HomeScreen({@required this.addedCrops});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModal(addedCrops),
      child: Consumer<HomeViewModal>(
        builder: (context, model, child) => Scaffold(
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
                  addedFruits(model),

                  //fertilizer and pest cart with tiles
                  fertilizerAndPests(model),

                  //check health card having check health button
                  checkHealthButton(model),
                ],
              ),
            )),
      ),
    );
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
            const EdgeInsets.only(top: 51.0, left: 15, right: 26, bottom: 9.0),
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
                    SizedBox(
                      width: 26.0.w,
                    ),

                    ///
                    ///popup button
                    ///
                    PopupMenuButton(
                      // padding: EdgeInsets.zero,
                      initialValue: 2,
                      child:
                          // ImageContainer(
                          //   assetImage: "$assets/more_vertical.png",
                          //   height: 19.h,
                          //   width: 5.w,
                          // ),
                          Center(
                              child: Icon(
                        Icons.more_vert,
                        color: Color(0XFF757575),
                        size: 26,
                      )),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            value: 0,
                            child: Text(
                              "Thanks",
                              style: bodyTextStyle,
                            ),
                          ),
                          PopupMenuItem(
                            value: 0,
                            child: Text(
                              "Settings",
                              style: bodyTextStyle,
                            ),
                          ),
                          PopupMenuItem(
                            value: 0,
                            child: Text(
                              "Recommend us",
                              style: bodyTextStyle,
                            ),
                          ),
                        ];
                        //  List.generate(2, (index) {
                        //   return PopupMenuItem(
                        //     value: index,
                        //     child: Text(index == 0 ? "update" : "delete"),
                        //   );
                        // });
                      },
                    ),

                    // IconButton(
                    //     padding: EdgeInsets.zero,
                    //     icon: ImageContainer(
                    //       assetImage: "$assets/more_vertical.png",
                    //       height: 19.h,
                    //       width: 5.w,
                    //     ),
                    //     onPressed: () {
                    //       print("more_vertical pressed");

                    //     }),
                  ],
                )
              ],
            ),

            SizedBox(
              height: 24.h,
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
  addedFruits(HomeViewModal model) {
    return Padding(
      padding: const EdgeInsets.only(left: 9, right: 22.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 136.h,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: model.availableCrops.length,
                  itemBuilder: (context, index) {
                    return HomeCropTile(
                      crop: model.availableCrops[index],
                      ontap: () {
                        for (int i = 0; i < model.availableCrops.length; i++) {
                          if (i == index) {
                            model.availableCrops[i].isSelected = true;
                          } else {
                            model.availableCrops[i].isSelected = false;
                          }
                          model.setState(ViewState.idle);
                        }
                      },
                    );
                  }),
            ),
          ),
          // //Edit button
          IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.edit, color: mainThemeColor),
              onPressed: () {
                print("Edit button pressed");
                Get.to(() => EditCropScreen(),
                    transition: Transition.leftToRight);
              })
        ],
      ),
    );
  }

  //fertilizer and pest cart with tiles
  fertilizerAndPests(HomeViewModal model) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 21, 12, 21),
      decoration: BoxDecoration(
        color: model.availableCrops
            .where((element) => element.isSelected)
            .first
            .color
            .withOpacity(0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //fertilizer calculator tile
          tile(
              color: model.availableCrops
                  .where((element) => element.isSelected)
                  .first
                  .color
                  .withOpacity(0.6), // Colors.red.withOpacity(0.4),
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
              color: model.availableCrops
                  .where((element) => element.isSelected)
                  .first
                  .color
                  .withOpacity(0.6),
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
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
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
  checkHealthButton(HomeViewModal model) {
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
                  onPressed: () {
                    Get.bottomSheet(ImagePickerBottomSheet(
                      // onCameraPressed: () {
                      //   Get.to(() => CheckHealthScreen());
                      // },
                      // onGalleryPressed: () {},
                      onCameraPressed: () async {
                        print("@CameraPressed");
                        File selectedImage = await model.pickCameraImage();
                        model.setState(ViewState.idle);
                        Get.back();
                        if (selectedImage != null) {
                          //here also assign it to the userdependants avatar
                          // model.patientProfile.avatar = selectedImage.path;

                          //now updating the local selected Image file
                          model.setSelectedImageFile(selectedImage);
                          //then show confirmation dialog for best user experience
                          showConfirmImageDialog(selectedImage);
                        }
                      },
                      onGalleryPressed: () async {
                        print("@GalleryPressed");
                        var selectedImage = await model.pickGalleryImage();
                        model.setState(ViewState.idle);
                        Get.back();
                        if (selectedImage != null) {
                          //here also assign it to the userdependants avatar
                          // model.patientProfile.avatar = selectedImage.path;
                          //now updating the local selected Image file
                          model.setSelectedImageFile(selectedImage);
                          //then show confirmation dialog for best user experience
                          showConfirmImageDialog(selectedImage);
                        }
                      },
                    ));
                  },
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

  showConfirmImageDialog(selectedImageFile) {
    Get.dialog((selectedImageFile != null)
        ? ImageSuccessDialog(
            selectedImageFile: selectedImageFile,
            onPressed: () {
              Get.back();
            },
          )
        : Center(
            child: Text("Image not Selected"),
          ));
  }
}
