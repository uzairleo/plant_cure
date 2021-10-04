import 'dart:io';

import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/check_health/check_health_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

typedef OnPressed = void Function();

class ImageSuccessDialog2 extends StatefulWidget {
  final OnPressed onPressed;
  final List<Asset> images;
  ImageSuccessDialog2({this.onPressed, this.images});

  @override
  _ImageSuccessDialog2State createState() => _ImageSuccessDialog2State();
}

class _ImageSuccessDialog2State extends State<ImageSuccessDialog2> {
  List<String> imagesPaths = [];
  List<File> imageFiles = [];
  @override
  void initState() {
    convertAssetsToPath();
    super.initState();
  }

  convertAssetsToPath() async {
    //first parse assets to paths
    for (var i = 0; i < widget.images.length; i++) {
      imagesPaths.add(await FlutterAbsolutePath.getAbsolutePath(
          widget.images[i].identifier));
    }
    //now parse for files
    for (var i = 0; i < widget.images.length; i++) {
      imageFiles.add(File(imagesPaths[i]));
    }

    print("IMAGES PATHS====> ${imagesPaths.toString()}");
    print("Files ====> ${imageFiles.first.toString()}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24.0),
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
            height: 300,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: imagesPaths.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 5.0),
                              child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: FileImage(File(imagesPaths[index])),
                                  ),
                                ),
                              ),
                            )),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    height: 40.h,
                    width: 200.w,
                    child: RoundedRaisedButton(
                      color: mainThemeColor,
                      buttonText: 'Check Health',
                      onPressed: () {
                        Get.to(() => CheckHealthScreen(File(imagesPaths[0])));
                      },
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
