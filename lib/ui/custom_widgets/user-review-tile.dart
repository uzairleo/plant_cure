// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:intl/intl.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';
// import 'package:ponansasa_patient_app/core/models/pharmacy-reviews.dart';

// ///
// ///This custom widget is used for user review tile as a comment
// ///

// class UserReviewTile extends StatelessWidget {
//   final PharmacyReview pharmacyReview;
//   UserReviewTile({this.pharmacyReview});

//   var localDateTime = DateFormat('yyyy-MM-dd').format(DateTime.now());
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 58.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: <Widget>[
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0),
//                 child: ImageContainer(
//                   assetImage: "assets/static_assets/doctor1.png",
//                   height: 42,
//                   width: 42,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 4.0),
//                       child: Text(
//                         "Dustin Tifani",
//                         style: appBarTextStyle.copyWith(fontSize: 12),
//                       ),
//                     ),
//                     RatingBarIndicator(
//                         rating:
//                             double.parse(pharmacyReview.ratingValues), //3.5,
//                         itemSize: 15.1,
//                         itemCount: 5,
//                         itemBuilder: (context, index) {
//                           return Icon(
//                             Icons.star,
//                             color: Color(0XFFEFCE4A),
//                           );
//                         }),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
//             child: Text(
//               "${pharmacyReview.createdAt ?? localDateTime}",
//               // pharmacyReview.createdAt??"22 march",
//               style: categoryTextStyle2,
//             ),
//           ),
//           Text(
//             pharmacyReview.comment,
//             // "Fast response, good manner from the staff."
//             // "Well job! Well job!",
//             textAlign: TextAlign.left,
//             style: categoryTextStyle,
//           )
//         ],
//       ),
//     );
//   }
// }
