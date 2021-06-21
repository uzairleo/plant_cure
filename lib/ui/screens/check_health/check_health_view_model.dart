import 'dart:io';

import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/models/disease.dart';
import 'package:farmer_assistant_app/core/services/database_service.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tflite/tflite.dart';

import '../../../locator.dart';

class CheckHealthViewModel extends BaseViewModel {
  CheckHealthViewModel(File image) {
    init(image);
  }
//all vairable/instances that we need in predicting the disease from image of fruits

  final _dbService = locator<DatabaseService>();
  List recognitions;
  double imageHeight;
  double imageWidth;
  String label;
  String confidence;
  bool isMlLoaded = false;
  Disease disease = Disease();

  init(image) async {
    //first loading the model
    setState(ViewState.loading);
    recognitions = [];
    loadModel().then((val) {
      // setState(ViewState.idle);
    });
    //then predicting the image
    await predictImage(image).then((value) {
      isMlLoaded = true;
      setState(ViewState.idle);
    });
  }

////
  ///A function that will load model from assets with exception handling
  ///
  Future loadModel() async {
    Tflite.close();
    try {
      String res;
      res = await Tflite.loadModel(
        // model: "assets/ml_assets/mobilenet_v1_1.0_224.tflite",
        // labels: "assets/ml_assets/mobilenet_v1_1.0_224.txt",
        model: "assets/ml_assets/MobileNetV2_Peach.tflite",
        labels: "assets/ml_assets/Peach_Labels.txt",
      );
      print(res);
    } on PlatformException {
      print('Failed to load model.');
    }
  }

  ///
  ///A function that will recognize image by runing a model on image that will return list of recognitions according to the
  ///label give to it
  ///
  Future recognizeImage(File image) async {
    setState(ViewState.loading);
    int startTime = new DateTime.now().millisecondsSinceEpoch;
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    this.recognitions = recognitions;
    int endTime = new DateTime.now().millisecondsSinceEpoch;
    print("Inference took ${endTime - startTime}ms");
    setState(ViewState.idle);
  }

  ///
  ///This function will be call on init that will predict image by checking the image either null
  ///or not and then recognize Image after that we can take the image width and height from image
  ///

  Future predictImage(File image) async {
    if (image == null) return;
    await recognizeImage(image);

    new FileImage(image)
        .resolve(new ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo info, bool _) {
      imageHeight = info.image.height.toDouble();
      imageWidth = info.image.width.toDouble();
    }));

    image = image;
    setState(ViewState.idle);
    //finally print the result of recognitions
    if (recognitions != null) {
      recognitions.forEach((res) {
        label = res["label"].toString();
        confidence = res["confidence"].toString();
      });
      print("Final Recognition from selected Image is ============>");
      print("${recognitions.map((res) => res["index"])}");
      print("${recognitions.map((res) => res["label"])}");
      print("${recognitions.map((res) => res["confidence"])}");
    }
  }

  ///
  ///In this function we will search for a disease according to the returned label
  ///that ML model returned to us and then get All data about the following disease of crops :)
  ///
  getAllAboutDisease() async {
    try {
      disease = await _dbService.getAllAboutDisease(label.replaceAll(')(', ""));
      if (disease.label == "notfound") {
        print("Sorry item not found");
      } else {
        print("Item found succesfully");
      }
    } catch (e) {
      print("Exception/SearchForDisease INfor ==> $e");
    }
  }
}
