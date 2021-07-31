import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/screens/fertilizer_calculator/fertilizer_calc_view_model.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class FertilizerCalculatro extends StatefulWidget {
  @override
  _FertilizerCalculatroState createState() => _FertilizerCalculatroState();
}

class _FertilizerCalculatroState extends State<FertilizerCalculatro> {
  // bool isCalculated = false;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FertilizerCalculatorViewModel(),
      child: Consumer<FertilizerCalculatorViewModel>(
        builder: (context, model, child) => ModalProgressHUD(
          inAsyncCall: model.state == ViewState.loading,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackButton(color: Colors.black),
              title: Text(
                "Fertilizer Calculator",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      //calcular view
                      calculatorView(model),

                      //resultView(),
                      // isCalculated
                      // ?
                      resultView(model),
                      // :
                      // SizedBox(
                      //   height: 200,
                      // ),

                      //button()
                      calculateButton(() {
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();
                          model.calculateFertilizers();
                        }
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  calculatorView(FertilizerCalculatorViewModel model) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Number of trees",
              style: headingTextStyle.copyWith(fontSize: 19),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 137.h,
          decoration: BoxDecoration(
              color: Colors.black38.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20.0)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Trees",
                    style: headingTextStyle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      onSaved: (value) {
                        model.inputNumber = double.parse(value);
                      },
                      controller: model.inputCtrlr,
                      validator: (value) =>
                          value.isEmpty ? "Invalid input" : null,
                      style: headingTextStyle.copyWith(fontSize: 36),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintStyle: headingTextStyle.copyWith(fontSize: 36),
                          hintText: "00",
                          border: InputBorder.none),
                    )),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  print("Reset Button Pressed");
                  model.reset();
                },
                child: Text(
                  "Reset",
                  style: subHeadingTextStyle.copyWith(
                      color: mainThemeColor, fontWeight: FontWeight.w600),
                ))
          ],
        )
      ],
    );
  }

  resultView(FertilizerCalculatorViewModel model) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "DAP/MOP/Urea",
                style: headingTextStyle.copyWith(fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "DAP\n${model.dap}KG\n${model.dapBag}Bag",
                  // "DAP\n11KG\n14Bag",
                  textAlign: TextAlign.center,
                  style: subHeadingTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  "MOP\n${model.mop}KG\n${model.mopBag}Bag",
                  // "MOP\n34KG\n4Bag",
                  textAlign: TextAlign.center,
                  style: subHeadingTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  "Urea\n${model.urea}KG\n${model.ureaBag}Bag",
                  // "Urea\n31KG\n2Bag",
                  textAlign: TextAlign.center,
                  style: subHeadingTextStyle,
                ),
              )
            ],
          ),
          // SizedBox(
          //   height: 60.h,
          // ),
        ],
      ),
    );
  }

  calculateButton(ontap) {
    return Column(
      children: [
        SizedBox(
          height: 120.h,
        ),
        RoundedRaisedButton(
          buttonText: "Calculate",
          color: mainThemeColor,
          onPressed: ontap,
        ),
      ],
    );
  }
}
