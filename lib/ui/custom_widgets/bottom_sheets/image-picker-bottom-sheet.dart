import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:flutter/material.dart';

typedef OnCameraPressed = void Function();
typedef OnGalleryPressed = void Function();

class ImagePickerBottomSheet extends StatelessWidget {
  final OnCameraPressed onCameraPressed;
  final OnGalleryPressed onGalleryPressed;
  ImagePickerBottomSheet({this.onCameraPressed, this.onGalleryPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomSheetTile(
                title: 'Camera',
                subtitle: 'Capture prescription using Camera',
                icon: Icons.camera_alt,
                onPressed: onCameraPressed),
            BottomSheetTile(
                title: 'Phone Media',
                subtitle: 'Pick your prescription from storage',
                icon: Icons.image,
                onPressed: onGalleryPressed),
          ],
        ),
      ),
      // ),
    );
  }
}

class BottomSheetTile extends StatelessWidget {
  final title;
  final subtitle;
  final icon;
  final onPressed;

  BottomSheetTile({this.title, this.subtitle, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListTile(
          leading: Icon(icon, color: mainThemeColor, size: 30),
          title: Text(title, style: subHeadingTextStyle.copyWith(fontSize: 14)),
          subtitle: Text(subtitle, style: bodyTextStyle.copyWith(fontSize: 10)),
        ),
      ),
    );
  }
}
