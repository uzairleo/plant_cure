// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/pharmacy.dart';
// import 'package:ponansasa_patient_app/ui/screens/upload-prescription/prescription-view-model.dart';

// import 'image-container.dart';

// class ChoosePharmacyTile extends StatefulWidget {
//   final Pharmacy pharmacy;
//   final PrescriptionViewModel model;
//   final int index;
//   ChoosePharmacyTile({this.pharmacy, this.model, this.index});

//   @override
//   _ChoosePharmacyTileState createState() => _ChoosePharmacyTileState();
// }

// class _ChoosePharmacyTileState extends State<ChoosePharmacyTile> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 2.0, right: 2.0),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(10),
//         onTap: () {
//           print(widget.index);
//           widget.model.changeSelected(widget.index);
//         },
//         child: Container(
//           height: 100,
//           width: 100,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               color: (widget.model.pharmacies[widget.index].isSelected)
//                   ? blueThemeColor.withOpacity(0.1)
//                   : Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey[200],
//                   blurRadius: 4, // has the effect of softening the shadow
//                   spreadRadius: 1.8, // has the effect of extending the shadow
//                   offset: Offset(
//                     0, // horizontal, move right 10
//                     2.4, // vertical, move down 10
//                   ),
//                 ),
//               ]),
//           child: Stack(
//             children: [
//               (widget.model.pharmacies[widget.index].isSelected)
//                   ? Align(
//                       alignment: Alignment.topRight,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: ImageContainer(
//                           assetImage: 'assets/static_assets/success.png',
//                           height: 21.46,
//                           width: 21.46,
//                         ),
//                       ),
//                     )
//                   : Container(),
//               Align(
//                 alignment: Alignment.center,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     //first widget
//                     ClipRRect(
//                         borderRadius: BorderRadius.circular(100.0),
//                         child: Container(
//                           height: 44,
//                           width: 44,
//                           child: widget.pharmacy.featureImage != null
//                               ? FadeInImage.assetNetwork(
//                                   fit: BoxFit.fill,
//                                   placeholder:
//                                       "assets/static_assets/placeholder.png",
//                                   image: widget.pharmacy.featureImage ?? '')
//                               : Image.asset(
//                                   'assets/static_assets/placeholder.png'),
//                         )),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     //seconds widget
//                     Text(
//                       widget.pharmacy.pharmacyName,
//                       textAlign: TextAlign.center,
//                       style: categoryTextStyle,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
