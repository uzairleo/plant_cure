import 'package:avatar_glow/avatar_glow.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:flutter/material.dart';

import 'image-container.dart';

class HomeCropTile extends StatefulWidget {
  final Crop crop;
  final ontap;

  const HomeCropTile({this.crop, this.ontap});

  @override
  _HomeCropTileState createState() => _HomeCropTileState();
}

class _HomeCropTileState extends State<HomeCropTile> {
  @override
  Widget build(BuildContext context) {
    return widget.crop.isSelected
        ? AvatarGlow(
            glowColor:
                widget.crop.color, //Colors.red.withOpacity(0.4), //fruit Color,
            endRadius: 70.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            shape: BoxShape.circle,
            animate: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: GestureDetector(
              onTap: widget.ontap,
              child: Container(
                height: 76.h,
                width: 76.w,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1.2,
                      blurRadius: 8,
                      offset: Offset(0, 4))
                ], shape: BoxShape.circle, color: Colors.white),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Hero(
                      tag: "${widget.crop.imgUrl}",
                      child: ImageContainer(
                        assetImage: widget.crop.imgUrl, // "$assets/banana.png",
                        height: 38,
                        width: 38,
                      ),
                    ),
                  ),
                ),
              ),
            ))
        : GestureDetector(
            onTap: widget.ontap,
            child: Padding(
              padding: const EdgeInsets.only(right: 19.0, left: 9.0),
              child: Container(
                height: 86.h,
                width: 86.w,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1.2,
                      blurRadius: 8,
                      offset: Offset(0, 4))
                ], shape: BoxShape.circle, color: Colors.white),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: ImageContainer(
                      assetImage: widget.crop.imgUrl, // "$assets/banana.png",
                      height: 38,
                      width: 38,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
