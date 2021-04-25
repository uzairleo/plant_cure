// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';

// class FileMessageBottomSheet extends StatelessWidget {
//   final onPickFile;
//   final onPickImage;

//   FileMessageBottomSheet({this.onPickFile, this.onPickImage});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       color: Color(0xFF757575),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20.0),
//             topRight: Radius.circular(20.0),
//           ),
//           color: Colors.white,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             BottomSheetTile(
//               title: 'Image',
//               subtitle: 'Pick an image to send',
//               icon: Icons.image,
//               onPressed: onPickImage,
//             ),
//             BottomSheetTile(
//               title: 'File',
//               subtitle: 'Pick a file to send',
//               icon: Icons.insert_drive_file,
//               onPressed: onPickFile,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BottomSheetTile extends StatelessWidget {
//   final title;
//   final subtitle;
//   final icon;
//   final onPressed;

//   BottomSheetTile({this.title, this.subtitle, this.icon, this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 10),
//         child: ListTile(
//           leading: Icon(icon, color: colorPrimary, size: 30),
//           title: Text(title, style: boldTextFont.copyWith(fontSize: 14)),
//           subtitle:
//               Text(subtitle, style: normalTextFont.copyWith(fontSize: 10)),
//         ),
//       ),
//     );
//   }
// }
