import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';

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

  injectAvailableCrops() {
    availableCrops
        .add(Crop(id: "1", imgUrl: "$assets/apple.png", name: "Apple"));
    availableCrops
        .add(Crop(id: "2", imgUrl: "$assets/banana.png", name: "Banana"));

    availableCrops
        .add(Crop(id: "3", imgUrl: "$assets/beans.png", name: "Beans"));
  }
}
