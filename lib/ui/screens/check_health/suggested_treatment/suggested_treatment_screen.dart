import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/disease.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuggestedTreatmentScreen extends StatelessWidget {
  final Disease disease;
  SuggestedTreatmentScreen(this.disease);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            "Suggested Treatment ",
            style: bodyTextStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25, right: 25, top: 60, bottom: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Biological Treatment',
                  "${disease.suggestedTreatment.title}",
                  style: headingTextStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  // "Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.",
                  "${disease.suggestedTreatment.treatment}",
                  style: bodyTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
