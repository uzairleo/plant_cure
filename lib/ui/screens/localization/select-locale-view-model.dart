import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/locale-tile.dart';

class SelectLocaleViewModel extends BaseViewModel {
  List<Locale> localeList = [];

  SelectLocaleViewModel() {
    injectLocale();
  }
  injectLocale() {
    localeList.add(Locale(label: "EN"));
    localeList.add(Locale(label: "اردو"));
  }
}
