// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/enums/view-state.dart';
// import 'package:ponansasa_patient_app/core/models/confirm_otp_body.dart';
// import 'package:ponansasa_patient_app/core/services/auth_data_service.dart';
// import 'package:ponansasa_patient_app/ui/screens/auth_registration/otp/otp_model.dart';
// import 'package:ponansasa_patient_app/ui/screens/auth_registratioa/signUp/registration-screen2.dart';
// import 'package:provider/provider.dart';

// import '../../../../locator.dart';

// class OtpScreen extends StatefulWidget {
//   final String phoneNumber;

//   OtpScreen({Key key, @required this.phoneNumber}) : super(key: key);

//   @override
//   _OtpScreenState createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   final authDataService = locator<AuthDataService>();
//   Color btnColor;
//   bool isValid = false;
//   ConfirmOtpBody body;
//   String otpInput;

//   @override
//   void initState() {
//     // listenForOtp();
//     btnColor = disable;
//     super.initState();
//   }

//   var formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: _onBackPressed,
//       child: Container(
//         color: colorPrimary,
//         child: SafeArea(
//           child: Scaffold(
//             body: ChangeNotifierProvider(
//               create: (context) => OtpModel(widget.phoneNumber),
//               child: Consumer<OtpModel>(
//                 builder: (context, model, child) => SingleChildScrollView(
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 22,
//                       ),
//                       Center(
//                         child: Text(
//                           "Verification",
//                           style: normalTextFont.copyWith(fontSize: 18),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "Enter verification code sent to phone no.",
//                         style: normalTextFont.copyWith(fontSize: 14),
//                       ),
//                       SizedBox(
//                         height: 25,
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(right: 50, left: 50),
//                         child: PinCodeTextField(
//                           backgroundColor: Colors.white,
//                           pinTheme: PinTheme(
//                             fieldHeight: 50,

//                             activeFillColor:colorPrimary,
//                             activeColor: colorPrimary,
//                             disabledColor: Colors.grey,
//                             inactiveColor: Colors.grey,
//                             inactiveFillColor:Colors.grey,
//                             selectedColor: colorPrimary,
//                               selectedFillColor:colorPrimary
//                             // activeColor:
//                           ),
//                           length: 4,

//                           validator: (value){
//                             if(value.length< 3|| value!=null){
//                               return "Invalid otp";
//                             }else{
//                               return null;
//                             }
//                           },
//                           onChanged: (v) {
//                             otpInput = v;
//                             if (otpInput.length == 4) {
//                               isValid = true;
//                               //Todo: Uncomment
// //                            setState(() {
// //                              btnColor = colorPrimary;
// //                            });
//                             }
//                             print("code change $v");
//                           },
//                           onCompleted: (v) {
//                             print("code submitted $v");
//                             setState(
//                                   () {
// //                                otpInput = v;
//                                 btnColor = colorPrimary;
// //                                isValid = true;
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Stack(
//                         children: <Widget>[
//                           Visibility(
//                             visible: model.state == ViewState.busy,
//                             child: Center(
//                               child: CircularProgressIndicator(),
//                             ),
//                           ),
//                           Visibility(
//                             visible: model.state == ViewState.idle,
//                             child: Container(
//                               margin: EdgeInsets.only(left: 13, right: 13),
//                               child: FlatButton(
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(40)),
//                                 color: btnColor,
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 20, horizontal: 120),
//                                   child: Text(
//                                     'Verify',
//                                     style: TextStyle(
//                                         color: isValid
//                                             ? Colors.white
//                                             : Colors.black),
//                                   ),
//                                 ),
//                                 onPressed: () async {
//                                   if (otpInput.length != 0 ||
//                                       otpInput.isNotEmpty) {
//                                     await model.reqConfirmOtp(otpInput);
//                                     if (model.response.success) {
//                                       ///
//                                       /// When OPT is successful, then it returns auth token.
//                                       /// So, we set and save these auth tokens for rest of the
//                                       /// request from database.
//                                       ///
//                                       authDataService.updateRefreshToken(
//                                           model.response.data.refresh);
//                                       authDataService.updateAccessToken(
//                                           model.response.data.access);
//                                       Get.to(RegistrationScreen2(
//                                           widget.phoneNumber));
//                                     }
//                                   } else {
//                                     showDialog(
//                                       context: context,
//                                       child: AlertDialog(
//                                         title: Text("Validation Erro!"),
//                                         content: Text(
//                                             "Please fill the otp before pressing next button."),
//                                         actions: <Widget>[
//                                           FlatButton(
//                                               color: blueThemeColor,
//                                               textColor: Colors.white,
//                                               onPressed: () {
//                                                 Navigator.of(context).pop();
//                                               },
//                                               child: Text("OK"))
//                                         ],
//                                       ),
//                                     );
//                                   }
//                                 },
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // void listenForOtp() async {
//   //   await SmsAutoFill().listenForCode;
//   // }

//   Future<bool> _onBackPressed() async {
//     return showDialog(
//       context: context,
//       builder: (context) => new AlertDialog(
//         title: new Text('Are you sure?'),
//         content: new Text('Do you want to exit an App'),
//         actions: <Widget>[
//           new FlatButton(
//             textColor: blueThemeColor,
//             onPressed: () {
//               Navigator.of(context).pop(false);
//               // _updateConnectionFlag(true);
//             },
//             child: Text(
//               "NO",
//             ),
//           ),
//           SizedBox(height: 16),
//           new FlatButton(
//             textColor: blueThemeColor,
//             onPressed: () {
//               exit(0);
//             },
//             child: Text("YES"),
//           ),
//         ],
//       ),
//     ) ??
//         false;
//   }
// }
