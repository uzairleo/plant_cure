import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/cupertino.dart';

class FertilizerCalculatorViewModel extends BaseViewModel {
  var inputCtrlr = TextEditingController();

  double inputNumber = 0.0;
  double dap = 0.0; //factor 2.17
  double mop = 0.0; //factor 1.67
  double urea = 0.0; //factor 2.17
  double dapBag = 0.0;
  double mopBag = 0.0;
  double ureaBag = 0.0;

  calculateFertilizers() {
    setState(ViewState.loading);
    dap = inputNumber * 2.17;
    mop = inputNumber * 1.67;
    urea = inputNumber * 2.17;

    dapBag = dap / 20;
    mopBag = mop / 20;
    ureaBag = urea / 20;
    setState(ViewState.idle);
  }

  reset() {
    dap = 0.0; //factor 2.17
    mop = 0.0; //factor 1.67
    urea = 0.0; //factor 2.17

    dapBag = 0.0;
    mopBag = 0.0;
    ureaBag = 0.0;
    inputCtrlr = TextEditingController();
    inputNumber = 0.0;
    setState(ViewState.idle);
  }
}
