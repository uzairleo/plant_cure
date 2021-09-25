import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateUsDialog extends StatefulWidget {
  @override
  _RateUsDialogState createState() => _RateUsDialogState();
}

class _RateUsDialogState extends State<RateUsDialog> {
  var formKey = GlobalKey<FormState>();
  bool isSubmitted = true;
  var feedbackCtrlr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 400.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 20, bottom: 20),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rate Us",
                        style: headingTextStyle,
                      ),
                    ],
                  ),
                  //stars for rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                          itemPadding: EdgeInsets.only(right: 4.0),
                          unratedColor: Colors.grey.withOpacity(0.6),
                          itemSize: 48,
                          glowColor: Colors.yellow,
                          itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                          onRatingUpdate: (value) {}),
                    ],
                  ),
                  //text field for feedback
                  Padding(
                      padding: EdgeInsets.only(bottom: 0.0, top: 10.h),
                      child: CustomTextField3(
                        inputType: TextInputType.text,
                        controller: feedbackCtrlr,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please fill this field";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {},
                        hintText: "Enter your feedback",
                      )),
                  //submit button

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      !isSubmitted
                          ? Center(child: CircularProgressIndicator())
                          : Container(
                              width: 180,
                              child: RoundedRaisedButton(
                                buttonText: "SUBMIT",
                                color: mainThemeColor,
                                onPressed: () {
                                  if (formKey.currentState.validate()) {
                                    formKey.currentState.validate();
                                    setState(() {
                                      isSubmitted = false;
                                    });
                                    Future.delayed(Duration(seconds: 2), () {
                                      setState(() {
                                        isSubmitted = true;
                                      });
                                      Get.back();
                                    });
                                  }
                                },
                              ),
                            ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField3 extends StatelessWidget {
  final controller;
  final bool obscure;
  final String errorText;
  final String hintText;
  final bool enabled;
  final Widget suffixIcon;
  final validator;
  final double fontSize;
  final String label;
  final inputType;
  final onSaved;
  final ontap;
  final bool disableBorder;
  CustomTextField3(
      {this.controller,
      this.ontap,
      this.disableBorder = false,
      this.label,
      this.inputType = TextInputType.text,
      this.obscure = false,
      this.enabled = true,
      this.validator,
      this.errorText,
      this.fontSize = 16.0,
      this.hintText,
      this.onSaved,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 140.96.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 1, // has the effect of softening the shadow
                    spreadRadius: 0.6, // has the effect of extending the shadow
                    offset: Offset(
                      0, // horizontal, move right 10
                      0.4, // vertical, move down 10
                    ),
                  ),
                ])),
        TextFormField(
          onTap: ontap,
          maxLines: 6,
          onSaved: onSaved,
          enabled: enabled,
          style: subBodyTextStyle.copyWith(fontSize: this.fontSize),
          cursorColor: mainThemeColor,
          controller: this.controller,
          obscureText: this.obscure,
          validator: validator,
          keyboardType: inputType,
          decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              isDense: true,
              errorStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'OpenSans',
              ),
              // alignLabelWithHint: true,

              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              // EdgeInsets.only(left: 21.0, top: 10),
              hintText: this.hintText,
              // errorStyle: TextStyle(fontSize: 8, height: 1),
              hintStyle: subBodyTextStyle.copyWith(
                  color: disableBorder ? greyColor : Color(0XFF686868),
                  fontSize: fontSize)),
        ),
      ],
    );
  }
}
