// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/screens/others/help/faq/faq-question-detail/faq-detail-screen1.dart';
// import 'package:ponansasa_patient_app/ui/screens/others/help/faq/faq-view-model/faq-view-model.dart';
// import 'package:provider/provider.dart';
// import 'package:ponansasa_patient_app/core/models/tags.dart';

// class FaqItemWidget extends StatelessWidget {
//   final Tag tag;
//   FaqItemWidget({this.tag});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(5),
//         onTap: () {
//           print("item tapped");
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => ChangeNotifierProvider(
//                   create: (context) => FaqViewModel(),
//                   child: FaqDetailScreen1(tag))));
//         },
//         child: Container(
//           height: 100,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5.0),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey[200],
//                   blurRadius: 4, // has the effect of softening the shadow
//                   spreadRadius: 1.6, // has the effect of extending the shadow
//                   offset: Offset(
//                     0, // horizontal, move right 10
//                     3.0, // vertical, move down 10
//                   ),
//                 )
//               ]
//               // color: Colors.white,
//               ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               //first widget
//               Container(
//                 height: 38,
//                 width: 38,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(60.0),
//                   child:
//                   FadeInImage.assetNetwork(
//                   placeholder: "assets/static_assets/placeholder.png",
//                   fit: BoxFit.fill,
//                   image: tag.image
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               //seconds widget
//               Text(
//                 "${tag.name}",
//                 style: categoryTextStyle,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
