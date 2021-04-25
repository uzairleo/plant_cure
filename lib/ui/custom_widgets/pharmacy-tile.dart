// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/pharmacy.dart';
// import 'package:ponansasa_patient_app/ui/screens/pharmacies/pharmacy-detail/pharmacy-detail-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/pharmacies/pharmacy-view-modal.dart';
// import 'package:provider/provider.dart';

// ///
// ///This is a custom widget used for pharmacyTile
// ///
// class PharmacyTile extends StatelessWidget {
//   final Pharmacy pharmacy;
//   PharmacyTile({this.pharmacy});
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Card(
//         elevation: 0,
//         child: InkWell(
//             borderRadius: BorderRadius.circular(10.0),
//             onTap: () {
//               print("pharmacy tile pressed");

//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (_) => ChangeNotifierProvider(
//                           create: (context) => PharmacyViewModal(),
//                           child: PharmacyDetailScreen(pharmacy))));
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey[200],
//                       blurRadius: 5, // has the effect of softening the shadow
//                       spreadRadius:
//                           1.6, // has the effect of extending the shadow
//                       offset: Offset(
//                         0, // horizontal, move right 10
//                         2.4, // vertical, move down 10
//                       ),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(10.0)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   //image of medicine
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4.0),
//                     child: Container(
//                         height: 53,
//                         width: 53,
//                         child: FadeInImage.assetNetwork(
//                             fit: BoxFit.fill,
//                             placeholder: "assets/static_assets/placeholder.png",
//                             image: pharmacy.featureImage)),
//                   ),

//                   SizedBox(
//                     height: 10,
//                   ),
//                   RichText(
//                     text: TextSpan(children: [
//                       TextSpan(
//                           text: pharmacy.pharmacyName,
//                           style: categoryTextStyle.copyWith(
//                               fontWeight: FontWeight.w600)),
//                       TextSpan(
//                           text:
//                               "${double.parse(pharmacy.distance ?? "").floor() / 1000} km",
//                           style: categoryTextStyle.copyWith(
//                               color: Color(0XFF407ADE)))
//                     ]),
//                   ),

//                   SizedBox(
//                     height: 3,
//                   ),
//                   Text(
//                     "${pharmacy.pharProductCount ?? 0} items",
//                     style: categoryTextStyle.copyWith(fontSize: 10),
//                   ),

//                   SizedBox(
//                     height: 10,
//                   ),
//                   RatingBarIndicator(
//                       rating: double.parse(pharmacy.averageRating.toString()),
//                       itemSize: 16.0,
//                       itemCount: 5,
//                       itemBuilder: (context, index) {
//                         return Icon(
//                           Icons.star,
//                           color: Colors.yellow,
//                         );
//                       }),

//                   SizedBox(
//                     height: 14,
//                   ),
//                   Text(
//                     "View more",
//                     style: categoryTextStyle.copyWith(
//                         fontWeight: FontWeight.w600, color: blueThemeColor),
//                   ),
//                 ],
//               ),
//             )),
//       ),
//     );
//   }
// }
