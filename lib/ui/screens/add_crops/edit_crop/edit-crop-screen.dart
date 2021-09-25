import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/added-crop-tile.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/crop-tile.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/edit_crop/edit-crop-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/root-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EditCropScreen extends StatefulWidget {
  @override
  _EditCropScreenState createState() => _EditCropScreenState();
}

class _EditCropScreenState extends State<EditCropScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AddCropViewModel>(
      builder: (context, model, child) => SafeArea(
          child: Scaffold(
        ///
        ///[body] starts from here
        ///
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///
            ///selected fruit area
            ///
            Container(
              padding:
                  EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 14),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //heading
                  heading(),

                  //selected fruit list
                  addedCrops(model),
                ],
              ),
            ),

            ///
            ///unselected crops list
            ///
            availableCropList(model),

            ///
            ///next button bottom row
            ///
            nextButton(
                onTap: model.addedCrops.isEmpty
                    ? null
                    : () {
                        model.clearSelectedCrop();
                        Get.to(
                          () => RootScreen(
                            crops: model.addedCrops,
                          ),
                        );
                      }),
          ],
        ),
      )),
    );
  }

  heading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Crops",
          style: headingTextStyle,
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 3,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Select your fruit you are interested in.",
          style: subBodyTextStyle.copyWith(
              fontWeight: FontWeight.w500, fontSize: 15),
        )
      ],
    );
  }

  addedCrops(AddCropViewModel model) {
    return model.addedCrops.length < 1
        ? Container()
        : Container(
            height: 100,
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.only(top: 20),
                itemCount: model.addedCrops.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AddedCropTile(model.addedCrops[index], () {
                    print("${model.addedCrops[index].name} is cancelled");
                    model.removeFromAddedCrops(model.addedCrops[index]);
                  });
                }),
          );
  }

  ///
  ///unselected crops list
  ///
  availableCropList(AddCropViewModel model) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 24),
        color: backgroundColor,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                // mainAxisExtent: 1,
                childAspectRatio: 0.6,
                crossAxisSpacing: 30,
                mainAxisSpacing: 20),
            itemCount: model.availableCrops.length,
            itemBuilder: (BuildContext ctx, index) {
              return CropTile(model.availableCrops[index], () {
                print("${model.availableCrops[index].name} added");
                model.addCrop(model.availableCrops[index]);
              });
            }),
      ),
    );
  }

  ///
  ///next button bottom row
  ///
  nextButton({onTap}) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 36.0, top: 16, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              child: RoundedRaisedButton(
                buttonText: "Next",
                onPressed: onTap,
                color: mainThemeColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
