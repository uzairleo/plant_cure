// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/others.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/consultation/message.dart';

// class MessengerTextRight extends StatelessWidget {
//   final Message message;

//   MessengerTextRight({this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10, bottom: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Flexible(
//                 flex: 1,
//                 child: Container(),
//               ),
//               Flexible(
//                 flex: 3,
//                 child: Material(
//                   color: blueBtnColor,
//                   borderRadius: chatBorderRadiusRight,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 20),
//                     child: Text(
//                       message.message ?? '',
//                       style: chatTextStyleRight,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 60, right: 7, top: 5),
//             child: Text(
// //              '9:00 PM',
//               message.timeStamp ?? ' ',
//               style: chatTimeTS,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MessengerTextLeft extends StatelessWidget {
//   final Message message;

//   MessengerTextLeft({this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10, bottom: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             children: [
//               Flexible(
//                 flex: 3,
//                 child: Material(
//                   color: Color(0XFFF6F6F6),
//                   borderRadius: chatBorderRadiusLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 20),
//                     child: Text(
//                       message.message ?? '',
//                       style: chatTextStyleLeft,
//                     ),
//                   ),
//                 ),
//               ),
//               Flexible(flex: 1, child: Container()),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 60, left: 8),
//             child: Text(
// //              '8:00 PM',
//               message.timeStamp ?? '',
//               style: chatTimeTS,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageMessageRight extends StatelessWidget {
//   final Message message;

//   ImageMessageRight(this.message);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: FadeInImage(
//                   height: 250,
//                   width: 180,
//                   image: NetworkImage(message.fileUrl ?? ''),
//                   placeholder: AssetImage('assets/static_assets/Image 1.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
//                 child: Text(
// //              '8:00 PM',
//                   message.timeStamp ?? '',
//                   style: chatTimeTS,
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class ImageMessageLeft extends StatelessWidget {
//   final Message message;

//   ImageMessageLeft(this.message);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: FadeInImage(
//                   height: 250,
//                   width: 180,
//                   image: NetworkImage(message.fileUrl ?? ''),
//                   placeholder: AssetImage('assets/static_assets/Image 1.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
//                 child: Text(
// //              '8:00 PM',
//                   message.timeStamp ?? '',
//                   style: chatTimeTS,
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class FileMessageRight extends StatelessWidget {
//   final Message message;

//   FileMessageRight(this.message);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Icon(Icons.insert_drive_file, color: colorPrimary, size: 100),
//               Text('${basename(message.fileUrl)}'),
//               Padding(
//                 padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
//                 child: Text(
// //              '8:00 PM',
//                   message.timeStamp ?? '',
//                   style: chatTimeTS,
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class FileMessageLeft extends StatelessWidget {
//   final Message message;

//   FileMessageLeft(this.message);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Icon(Icons.insert_drive_file, color: colorPrimary, size: 100),
//               Text('${basename(message.fileUrl)}'),
//               Padding(
//                 padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
//                 child: Text(
// //              '8:00 PM',
//                   message.timeStamp ?? '',
//                   style: chatTimeTS,
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
