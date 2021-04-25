//import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:ponasasadoctor/res/theme.dart';
//
//class Button {
//  Widget show(BuildContext context, String title, Color bgcolor, Color txtColor,
//      {Function onClick}) {
//    return GestureDetector(
//      onTap: () {
//        onClick();
//      },
//      child: Container(
//        width: MediaQuery.of(context).size.width,
//        child: Card(
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(25.0),
//          ),
//          color: bgcolor,
//          child: Padding(
//            padding: EdgeInsets.only(
//                left: ScreenUtil().setWidth(27),
//                right: ScreenUtil().setWidth(27),
//                top: ScreenUtil().setWidth(15),
//                bottom: ScreenUtil().setWidth(15)),
//            child: Text(
//              title,
//              textAlign: TextAlign.center,
//              style: boldTextFont.copyWith(
//                  fontSize: ScreenUtil().setSp(12), color: txtColor),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget btnWrap(
//      BuildContext context, String title, Color bgcolor, Color txtColor,
//      {Function onClick}) {
//    return InkWell(
//      onTap: () {
//        onClick();
//      },
//      child: Container(
//        child: Card(
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(25),
//          ),
//          color: bgcolor,
//          child: Padding(
//            padding: EdgeInsets.only(
//                left: ScreenUtil().setWidth(27),
//                right: ScreenUtil().setWidth(27),
//                top: ScreenUtil().setWidth(10),
//                bottom: ScreenUtil().setWidth(10)),
//            child: Text(
//              title,
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                  fontSize: ScreenUtil().setSp(12),
//                  fontWeight: FontWeight.bold,
//                  color: txtColor),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget btnRoundedBorder(BuildContext context, String text, double size,
//      {Function onClick, color = Colors.white, textColor = colorPrimary}) {
//    return SizedBox(
//      child: RaisedButton(
//          color: color,
//          padding: EdgeInsets.only(
//              left: ScreenUtil().setWidth(45),
//              right: ScreenUtil().setWidth(45),
//              top: ScreenUtil().setSp(13),
//              bottom: ScreenUtil().setSp(13)),
//          child: Padding(
//            padding: EdgeInsets.only(
//                left: ScreenUtil().setSp(34), right: ScreenUtil().setSp(34)),
//            child: Text(
//              text,
//              style: boldTextFont.copyWith(fontSize: size, color: textColor),
//            ),
//          ),
//          onPressed: () {
//            onClick();
//          },
//          shape: new RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(ScreenUtil().setSp(25)),
//              side: BorderSide(color: colorPrimary))),
//    );
//  }
//}
