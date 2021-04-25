// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';
// import 'package:ponansasa_patient_app/core/models/pharmacy.dart';
// import 'package:ponansasa_patient_app/ui/screens/pharmacies/others-pharmacies-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/pharmacies/pharmacy-detail/pharmacy-detail-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/pharmacies/pharmacy-view-modal.dart';
// import 'package:provider/provider.dart';

// class PharmacyItemWidget extends StatelessWidget {
//   final Pharmacy pharmacy;
//   PharmacyItemWidget({this.pharmacy});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 2.0, right: 2.0),
//       child: Card(
//         elevation: 1.8,
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//         child: InkWell(
//           borderRadius: BorderRadius.circular(10),
//           onTap: () {
//             (pharmacy.pharmacyName == "Others")
//                 ? Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (_) => ChangeNotifierProvider(
//                             create: (context) => PharmacyViewModal(),
//                             child: OthersPharmacyScreen())))
//                 : Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (_) => ChangeNotifierProvider(
//                             create: (context) => PharmacyViewModal(),
//                             child: PharmacyDetailScreen(pharmacy))));
//           },
//           child: Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               // color: Colors.white,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 //first widget
//                 (pharmacy.pharmacyName == 'Others')
//                     ? ImageContainer(
//                         width: 44,
//                         height: 44,
//                         assetImage: "assets/static_assets/others.png",
//                       )
//                     : ClipRRect(
//                         borderRadius: BorderRadius.circular(150.0),
//                         child: Container(
//                             height: 44,
//                             width: 44,
//                             child: FadeInImage.assetNetwork(
//                                 fit: BoxFit.fill,
//                                 placeholder:
//                                     "assets/static_assets/placeholder.png",
//                                 image: pharmacy.featureImage)),
//                       ),

//                 SizedBox(
//                   height: 10,
//                 ),
//                 //seconds widget
//                 Text(
//                   pharmacy.pharmacyName,
//                   style: categoryTextStyle,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
