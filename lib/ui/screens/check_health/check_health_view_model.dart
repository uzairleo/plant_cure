import 'dart:io';

import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/services.dart';
import 'package:tflite/tflite.dart';

class CheckHealthViewModel extends BaseViewModel {
  CheckHealthViewModel(File image) {
    init(image);
  }

  List recognitions;

  init(image) async {
    setState(ViewState.loading);
    recognitions = [];
    loadModel().then((val) {
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
        model: "assets/ml_assets/mobilenet_v1_1.0_224.tflite",
        labels: "assets/ml_assets/mobilenet_v1_1.0_224.txt",
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
}
