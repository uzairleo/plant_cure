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
        imgUrl: "$assets/apricot.png",
        name: "Apricot",
        color: Colors.orange.withOpacity(0.4)));
    availableCrops.add(Crop(
      id: "2",
      imgUrl: "$assets/cheryy1.png",
      name: "Cherry",
      color: Colors.red.withOpacity(1), //Color(0XFFFFC61E),
    ));

    availableCrops.add(
      Crop(
          id: "3",
          imgUrl: "$assets/citrus.jpg",
          name: "Citrus",
          color: Colors.orange.withOpacity(0.8)),
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
          name: "Plum",
          color: Colors.red.withOpacity(1)),
    );

    availableCrops.add(
      Crop(
          id: "6",
          imgUrl: "$assets/guvava.jpg",
          name: "Guvava",
          color: Colors.green.withOpacity(1)),
    );
    availableCrops.add(
      Crop(
          id: "7",
          imgUrl: "$assets/grapes.png",
          name: "Grapes",
          color: Colors.green.withOpacity(1)),
    );
    availableCrops.add(
      Crop(
          id: "8",
          imgUrl: "$assets/strawberry01.png",
          name: "Strawberry",
          color: Colors.red.withOpacity(1)),
    );
  }
}
