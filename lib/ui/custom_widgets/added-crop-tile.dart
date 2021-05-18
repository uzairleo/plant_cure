import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddedCropTile extends StatelessWidget {
  final Crop crop;
  final ontap;
  AddedCropTile(this.crop, this.ontap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
            // height: 250,
            // color: Colors.orange,
            child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: greyColor.withOpacity(0.2)),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ImageContainer(
                    assetImage: crop.imgUrl, // "$assets/banana.png",
                    height: 38,
                    width: 38,
                  ),
                ),
              ),
            ),
            //cancel button
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: ontap,
                child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.cancel,
                        color: mainThemeColor,
                        size: 26,
                      ),
                    )),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class Locale {
  String label;
  bool isSelected;
  Locale({this.label, this.isSelected = false});
}
