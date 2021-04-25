// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/screens/medicine/medicine-detail-screen.dart';
// import 'package:ponansasa_patient_app/core/models/medicine.dart';

// ///
// ///This is a custom widget used for Medicine Tile
// ///
// class MedicineTile extends StatelessWidget {
//   final Medicine medicine;
//   MedicineTile({this.medicine});
//   final nullPrice = "00 - \$00";
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         print("medicine tile pressed");
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (_) => MedicineDetailScreen(
//                       medicine,
//                     )));
//       },
//       child: Material(
//         child: Card(
//             elevation: 0,
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
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   //image of medicine
//                   Padding(
//                     padding: EdgeInsets.only(top: 4),
//                     child: Container(
//                         height: 53,
//                         width: 53,
//                         child: FadeInImage.assetNetwork(
//                             fit: BoxFit.fill,
//                             placeholder: "assets/static_assets/placeholder.png",
//                             image: medicine.image)),
//                   ),
//                   // ImageContainer(
//                   //   assetImage: 'assets/static_assets/Paracetamol.png',
//                   //   height: 53,
//                   //   width: 53,
//                   // ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   //name of medicine with quantity
//                   Text(
//                     "${medicine.name ?? "-"}",
//                     style: categoryTextStyle.copyWith(
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   //pharmacy name

//                   Text(
//                     "${medicine.pharmacyName ?? "-"}",
//                     style: categoryTextStyle,
//                   ),
//                   //quantity tag
//                   SizedBox(
//                     height: 10,
//                   ),

//                   Text(
//                     "Per bottle",
//                     style: categoryTextStyle.copyWith(
//                         fontSize: 10, color: greyColor),
//                   ),
//                   //price of medicine
//                   Text(
//                     '\$${medicine.price ?? nullPrice}',
//                     style:
//                         categoryTextStyle.copyWith(fontWeight: FontWeight.w600),
//                   ),
//                   // SizedBox(
//                   //   height: 16,
//                   // ),

//                   //add to card tag or button

//                   FlatButton(
//                     child: Text(
//                       "Add to cart",
//                       style: categoryTextStyle.copyWith(
//                           fontWeight: FontWeight.w600, color: blueThemeColor),
//                     ),
//                     onPressed: () {
//                       print("medicine tile pressed");
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (_) => MedicineDetailScreen(
//                                     medicine,
//                                   )));
//                     },
//                   ),

//                   // SizedBox(
//                   //   height: 19,
//                   // ),
//                 ],
//               ),
//             )),
//       ),
//     );
//   }
// }
