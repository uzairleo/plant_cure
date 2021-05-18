import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CropTile extends StatelessWidget {
  final Crop crop;
  final ontap;
  CropTile(this.crop, this.ontap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.ontap,
      child: Container(
          // height: 250,
          // color: Colors.orange,
          child: Column(
        children: [
          //container
          Container(
            height: 88,
            width: 88,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
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

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "${crop.name}",
              style: bodyTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Locale {
  String label;
  bool isSelected;
  Locale({this.label, this.isSelected = false});
}
