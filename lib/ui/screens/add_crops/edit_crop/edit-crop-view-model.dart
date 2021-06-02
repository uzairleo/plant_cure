// import 'package:farmer_assistant_app/core/constants/strings.dart';
// import 'package:farmer_assistant_app/core/models/crop.dart';
// import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
// import 'package:flutter/material.dart';

// class EditCropViewModel extends BaseViewModel {
//   EditCropViewModel() {
//     injectAvailableCrops();
//   }

//   List<Crop> availableCrops = [];
//   List<Crop> addedCrops = [];

//   addCrop(Crop crop) {
//     if (!addedCrops.contains(crop)) {
//       addedCrops.add(crop);
//     }
//     notifyListeners();
//   }

//   removeFromAddedCrops(Crop crop) {
//     addedCrops.remove(crop);
//     notifyListeners();
//   }

//   injectAvailableCrops() {
//     availableCrops.add(Crop(
//         id: "1",
//         imgUrl: "$assets/apple.png",
//         name: "Apple",
//         color: Colors.redAccent.withOpacity(0.4)));
//     availableCrops.add(Crop(
//       id: "2",
//       imgUrl: "$assets/banana.png",
//       name: "Banana",
//       color: Color(0XFFFFC61E),
//     ));

//     availableCrops.add(
//       Crop(
//           id: "3",
//           imgUrl: "$assets/beans.png",
//           name: "Beans",
//           color: Colors.green.withOpacity(1)),
//     );
//   }
// }
