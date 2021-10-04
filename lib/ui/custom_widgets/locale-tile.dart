import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocaleTile extends StatefulWidget {
  final Locale locale;
  final ontap;
  LocaleTile(this.locale, this.ontap);

  @override
  _LocaleTileState createState() => _LocaleTileState();
}

class _LocaleTileState extends State<LocaleTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: BouncingWidget(
        duration: Duration(milliseconds: 100),
        scaleFactor: 1.5,
        onPressed: widget.ontap,
        child: Container(
          child: Column(
            children: [
              //container
              Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.locale.isSelected
                        ? mainThemeColor.withOpacity(0.3)
                        : greyColor.withOpacity(0.3)),
                child: Center(
                    child: Text(
                  "${widget.locale.label}",
                  style: headingTextStyle,
                )),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "${widget.locale.label == "EN" ? "English" : "اردو"}",
                  style: bodyTextStyle.copyWith(
                    color: widget.locale.isSelected
                        ? mainThemeColor
                        : Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Locale {
  String label;
  bool isSelected;
  Locale({this.label, this.isSelected = false});
}
