import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';

class AddCropViewModel extends BaseViewModel {
  List<Crop> availableCrops = [];

  List<Crop> addedCrops = [];
}
