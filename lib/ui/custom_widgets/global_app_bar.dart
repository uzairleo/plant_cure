// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';

// class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final title;

//   GlobalAppBar({@required this.title});

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.instance =
//         ScreenUtil(width: 360, height: 640, allowFontScaling: true)
//           ..init(context);
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 1,
//       automaticallyImplyLeading: false,
//       title: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: SvgPicture.asset("assets/img/ic_back.svg"),
//             ),
//           ),
//           Expanded(
//             flex: 8,
//             child: Center(
//               child: Text(
//                 title ?? '',
//                 style: boldTextFont.copyWith(fontSize: ScreenUtil().setSp(14)),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
// }
