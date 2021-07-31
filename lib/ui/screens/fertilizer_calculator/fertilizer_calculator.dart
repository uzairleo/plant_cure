import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:flutter/material.dart';

class FertilizerCalculatro extends StatefulWidget {
  @override
  _FertilizerCalculatroState createState() => _FertilizerCalculatroState();
}

class _FertilizerCalculatroState extends State<FertilizerCalculatro> {
  bool isCalculated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            children: [
              //calcular view
              calculatorView(),

              //resultView(),
              isCalculated
                  ? resultView()
                  : SizedBox(
                      height: 200,
                    ),

              //button()
              calculateButton(),
            ],
          ),
        ),
      ),
    );
  }

  calculatorView() {
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
              color: Colors.black38.withOpacity(0.3),
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
                    child: TextField(
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
        )
      ],
    );
  }

  resultView() {
    return Padding(
      padding: const EdgeInsets.only(top: 140.0),
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
                  "DAP\n11KG\n14Bag",
                  textAlign: TextAlign.center,
                  style: subHeadingTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  "MOP\n34KG\n4Bag",
                  textAlign: TextAlign.center,
                  style: subHeadingTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  "Urea\n31KG\n2Bag",
                  textAlign: TextAlign.center,
                  style: subHeadingTextStyle,
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }

  calculateButton() {
    return RoundedRaisedButton(
      buttonText: "Calculate",
      color: mainThemeColor,
      onPressed: () {
        setState(() {
          isCalculated = !isCalculated;
        });
      },
    );
  }
}
