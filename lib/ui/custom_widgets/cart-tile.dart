// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/image-container.dart';
// import 'package:ponansasa_patient_app/core/models/cart.dart';
// import 'package:ponansasa_patient_app/ui/screens/cart/cart-view-modal.dart';
// import 'package:provider/provider.dart';

// ///
// ///this custom widget is used for cart tile on notification screen
// ///

// class CartTile extends StatelessWidget {
//   final CartItem cartItem;
//   CartTile({this.cartItem});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         color: Colors.white,
//         elevation: 1.0,
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//         child: Container(
//             height: 108,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
//             child: Row(
//               children: <Widget>[
//                 //first row
//                 SizedBox(
//                   width: 13.0,
//                 ),
//                 //doctor image

//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(5.0),
//                   child: Container(
//                       height: 61,
//                       width: 61,
//                       child: FadeInImage.assetNetwork(
//                           fit: BoxFit.fill,
//                           placeholder: "assets/static_assets/placeholder.png",
//                           image: cartItem.medicine.image)),
//                 ),
//                 SizedBox(
//                   width: 14.0,
//                 ),
//                 //2nd widget
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       SizedBox(
//                         height: 12,
//                       ),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             cartItem.medicine.name,
//                             style: subBodyTextStyle.copyWith(
//                                 fontWeight: FontWeight.w600),
//                           ),
//                           Container(
//                             width: 100,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(right: 18),
//                             child: GestureDetector(
//                               child: ImageContainer(
//                                 assetImage: "assets/static_assets/cancel.png",
//                                 width: 20,
//                                 height: 20,
//                               ),
//                               onTap: () {
//                                 print('delete cart item pressed');
//                                 Provider.of<CartViewModal>(context,
//                                         listen: false)
//                                     .deleteCartItem(cartItem, context);
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                       Text(
//                        " ${cartItem.pharmacy.pharmacyName}",
//                         style: labelTextStyle2.copyWith(
//                             color: greyColor, fontWeight: FontWeight.w500),
//                       ),
//                       Text(
//                         "Qty    ${cartItem.quantity ?? "-"}",
//                         style: subBodyTextStyle.copyWith(
//                             fontSize: 12, fontWeight: FontWeight.w500),
//                       ),
//                       Text(
//                         "\$ ${cartItem.itemPrice ?? "-"}",
//                         style: subBodyTextStyle.copyWith(
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   ),
//                   //   ],
//                   // ),
//                 )
//               ],
//             )));
//   }
// }
