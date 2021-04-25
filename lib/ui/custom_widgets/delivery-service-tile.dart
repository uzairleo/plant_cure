// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/delivery-services.dart';

// ///
// ///A custom widget that is used for Delivery service section in expansion tile
// ///purpose of this custom widget is to reuse the code and to improve its code quality
// ///

// ///
// ///Defining all required [Callbacks] using typeDef
// typedef void ServiceSelected(String value);
// typedef void SetDeliveryGValue(int value);
// typedef void Collapse();

// class DeliveryServiceTile extends StatefulWidget {
//   final DeliveryService deliveryService;
//   Collapse dsCollapse; // A callback for collapsing of sub expansion tile
//   ServiceSelected serviceSelected;
//   SetDeliveryGValue setDeliveryGValue;
//   int deliveryGValue;

//   /// A callback for service selecting to change the deliveryservice state
//   DeliveryServiceTile(
//       {this.deliveryService,
//       this.dsCollapse,
//       this.serviceSelected,
//       this.deliveryGValue,
//       this.setDeliveryGValue});
//   @override
//   _DeliveryServiceTileState createState() => _DeliveryServiceTileState();
// }

// class _DeliveryServiceTileState extends State<DeliveryServiceTile> {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: RichText(
//         text: TextSpan(children: [
//           TextSpan(text: widget.deliveryService.dSName, style: appBarTextStyle),
//           TextSpan(
//               text: " \$${widget.deliveryService.sCharges}",
//               style: appBarTextStyle.copyWith(color: blueThemeColor)),
//         ]),
//       ),
//       subtitle:
//           Text("${widget.deliveryService.sDuration}", style: categoryTextStyle),
//       trailing: Transform.scale(
//         scale: 0.8,
//         child: Radio(
//             value: widget.deliveryService.deliveryStatus,
//             groupValue: widget.deliveryGValue,
//             onChanged: (val) {
//               setState(() {
//                 widget.setDeliveryGValue(val);
//                 widget.serviceSelected(widget.deliveryService.dSName);
//                 widget.dsCollapse();
//               });
//             }),
//       ),
//     );
//   }
// }
