import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/material.dart';

class AddCropViewModel extends BaseViewModel {
  AddCropViewModel() {
    injectAvailableCrops();
  }

  List<Crop> availableCrops = [];
  List<Crop> addedCrops = [];

  addCrop(Crop crop) {
    if (!addedCrops.contains(crop)) {
      addedCrops.add(crop);
    }
    notifyListeners();
  }

  removeFromAddedCrops(Crop crop) {
    addedCrops.remove(crop);
    notifyListeners();
  }

  clearSelectedCrop() {
    for (int i = 0; i < addedCrops.length; i++) {
      addedCrops[i].isSelected = false;
    }
  }

  injectAvailableCrops() {
    availableCrops.add(Crop(
        id: "1",
        imgUrl: "$assets/apple.png",
        name: "Peach",
        color: Colors.redAccent.withOpacity(0.4)));
    availableCrops.add(Crop(
      id: "2",
      imgUrl: "$assets/banana.png",
      name: "Banana",
      color: Color(0XFFFFC61E),
    ));

    availableCrops.add(
      Crop(
          id: "3",
          imgUrl: "$assets/beans.png",
          name: "Beans",
          color: Colors.green.withOpacity(1)),
    );
    availableCrops.add(
      Crop(
          id: "4",
          imgUrl: "$assets/mango.jpg",
          name: "Mangoes",
          color: Colors.yellow.withOpacity(1)),
    );
    availableCrops.add(
      Crop(
          id: "5",
          imgUrl: "$assets/plumb.jpg",
          name: "Plumb",
          color: Colors.red.withOpacity(1)),
    );

    availableCrops.add(
      Crop(
          id: "6",
          imgUrl: "$assets/guvava.jpg",
          name: "Guvava",
          color: Colors.green.withOpacity(1)),
    );
  }
}
