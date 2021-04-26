import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/crop-tile.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-view-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCropScreen extends StatefulWidget {
  @override
  _AddCropScreenState createState() => _AddCropScreenState();
}

class _AddCropScreenState extends State<AddCropScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddCropViewModel(),
      child: Consumer<AddCropViewModel>(
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
                    addedCrops(),
                  ],
                ),
              ),

              ///
              ///unselected crops list
              ///
              availableCropList(),

              ///
              ///next button bottom row
              ///
              nextButton(onTap: () {}),
            ],
          ),
        )),
      ),
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
          "Select up to 2 crops you are interested in.",
          style: subBodyTextStyle.copyWith(
              fontWeight: FontWeight.w500, fontSize: 15),
        )
      ],
    );
  }

  addedCrops() {
    return Container();
  }

  ///
  ///unselected crops list
  ///
  availableCropList() {
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
            itemCount: 4,
            itemBuilder: (BuildContext ctx, index) {
              return CropTile(Crop(), () {});
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
                onPressed: () {},
                color: mainThemeColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
