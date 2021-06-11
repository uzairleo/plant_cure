import 'dart:io';

import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/check_health/check_health_screen.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

typedef OnPressed = void Function();

class ImageSuccessDialog extends StatefulWidget {
  final OnPressed onPressed;
  final File selectedImageFile;
  ImageSuccessDialog({this.onPressed, this.selectedImageFile});

  @override
  _ImageSuccessDialogState createState() => _ImageSuccessDialogState();
}

class _ImageSuccessDialogState extends State<ImageSuccessDialog> {
  final _cropController = CropController();
  final _imageDataList = <Uint8List>[];

  var _loadingImage = false;
  var _currentImage = 0;
  var _isSumbnail = false;
  var _isCropping = false;
  var _isCircleUi = false;
  Uint8List _croppedData;

  @override
  void initState() {
    print('${widget.selectedImageFile.path}');
    // _images.add('${widget.selectedImageFile.path}');
    _loadAllImages();
    super.initState();
  }

  Future<void> _loadAllImages() async {
    setState(() {
      _loadingImage = true;
    });
    // for (final assetName in _images) {
    _imageDataList.add(await _load(widget.selectedImageFile));
    // }
    setState(() {
      _loadingImage = false;
    });
  }

  Future<Uint8List> _load(File assetName) async {
    final assetData =
        await assetName.readAsBytes(); //rootBundle.loadString(assetName);
    //  await rootBundle.load(assetName);
    return assetData;
    // assetData.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24.0),
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
          height: 500,
          child: Center(
            child: Visibility(
              visible: !_loadingImage && !_isCropping,
              child: Column(
                children: [
                  Expanded(
                    child: Visibility(
                      visible: _croppedData == null,
                      child: Stack(
                        children: [
                          if (_imageDataList.isNotEmpty)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Crop(
                                controller: _cropController,
                                image: _imageDataList[_currentImage],
                                onCropped: (croppedData) {
                                  setState(() {
                                    _croppedData = croppedData;
                                    _isCropping = false;
                                  });
                                },
                                withCircleUi: _isCircleUi,
                                initialSize: 0.5,
                                maskColor: _isSumbnail ? Colors.white : null,
                                cornerDotBuilder: (size, index) => _isSumbnail
                                    ? const SizedBox.shrink()
                                    : const DotControl(),
                              ),
                            ),
                        ],
                      ),
                      replacement: Center(
                        child: _croppedData == null
                            ? SizedBox.shrink()
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.memory(_croppedData),
                                  Container(
                                    height: 40.h,
                                    width: 196.w,
                                    child: RoundedRaisedButton(
                                      color: mainThemeColor,
                                      buttonText: 'Use this image',
                                      onPressed: () {
                                        //now time to turn back unit8list crop data to file again
                                        //in order to send it to ML model for future use
                                        File croppedFile =
                                            File.fromRawPath(_croppedData);
                                        print("${croppedFile.path}");
                                        print("BASSS ka kana");
                                        // Get.defaultDialog(
                                        //     content: Column(
                                        //   children: [
                                        //     Image.memory(_croppedData),
                                        // Image(
                                        //   image: FileImage(
                                        //       widget.selectedImageFile),
                                        //   width: double.infinity,
                                        //   height: 300,
                                        //   fit: BoxFit.cover,
                                        // )
                                        //   ],
                                        // ));
                                        Get.to(() => CheckHealthScreen(
                                            widget.selectedImageFile));
                                        // Get.back();
                                      },
                                    ),
                                  )
                                ],
                              ),
                      ),
                    ),
                  ),
                  if (_croppedData == null)
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.crop_7_5),
                                onPressed: () {
                                  _isCircleUi = false;
                                  _cropController.aspectRatio = 16 / 4;
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.crop_16_9),
                                onPressed: () {
                                  _isCircleUi = false;
                                  _cropController.aspectRatio = 16 / 9;
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.crop_5_4),
                                onPressed: () {
                                  _isCircleUi = false;
                                  _cropController.aspectRatio = 4 / 3;
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.crop_square),
                                onPressed: () {
                                  _isCircleUi = false;
                                  _cropController
                                    ..withCircleUi = false
                                    ..aspectRatio = 1;
                                },
                              ),
                              IconButton(
                                  icon: Icon(Icons.circle),
                                  onPressed: () {
                                    _isCircleUi = true;
                                    _cropController.withCircleUi = true;
                                  }),
                            ],
                          ),
                          const SizedBox(height: 4),
                          // Container(
                          //   width: double.infinity,
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       setState(() {
                          //         _isCropping = true;
                          //       });
                          //       _isCircleUi
                          //           ? _cropController.cropCircle()
                          //           : _cropController.crop();
                          //     },
                          //     child: Padding(
                          //       padding:
                          //           const EdgeInsets.symmetric(vertical: 16),
                          //       child: Text('CROP IT!'),
                          //     ),
                          //   ),
                          Container(
                            height: 40.h,
                            width: 196.w,
                            child: RoundedRaisedButton(
                              color: mainThemeColor,
                              buttonText: 'CROP IT!',
                              onPressed: () {
                                setState(() {
                                  _isCropping = true;
                                });
                                _isCircleUi
                                    ? _cropController.cropCircle()
                                    : _cropController.crop();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              replacement: CircularProgressIndicator(),
            ),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //     (selectedImageFile != null)
          //         ? Image(
          //           image: FileImage(selectedImageFile),
          //           width: double.infinity,
          //           height: 300,
          //           fit: BoxFit.cover,
          //         )
          //         : Center(
          //             child: CircularProgressIndicator(),
          //           ),
          //     SizedBox(height: 60),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           height: 40.h,
          //           width: 196.w,
          //           child: RoundedRaisedButton(
          //             color: mainThemeColor,
          //             buttonText: 'Crop image',
          //             onPressed: onPressed,
          //           ),
          //         )
          //       ],
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}
