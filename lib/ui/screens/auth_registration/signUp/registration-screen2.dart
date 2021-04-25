// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/enums/view-state.dart';
// import 'package:ponansasa_patient_app/core/models/country_model.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/bottom_sheets/date-bottom-sheet.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/custom-app-bar.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/rounded_blue_btn.dart';
// import 'package:ponansasa_patient_app/ui/screens/auth_registration/signUp/registration-view-modal.dart';
// import 'package:ponansasa_patient_app/ui/screens/root-screen.dart';
// import 'package:ponansasa_patient_app/ui/screens/user_vitals/add-user-vitals-screen.dart';
// import 'package:provider/provider.dart';

// import '../../choose_country_screen.dart';

// ///
// ///Registration screen 2 is used for user registration
// ///

// class RegistrationScreen2 extends StatefulWidget {
//   final phoneNumber;

//   RegistrationScreen2(this.phoneNumber);

//   @override
//   _RegistrationScreen2State createState() => _RegistrationScreen2State();
// }

// class _RegistrationScreen2State extends State<RegistrationScreen2> {
//   var _formkey = GlobalKey<FormState>();
//   CountryModel selectedCountry;
//   var nationalityCtrlr;
//   @override
//   void initState() {
//     super.initState();
//     selectedCountry = CountryModel.inject(
//         "assets/static_assets/img_flag_kenya.png", "Kenya", 254);
//     selectedCountry = CountryModel.inject(
//         "assets/static_assets/img_flag_kenya.png", "pakistan", 92);
//     nationalityCtrlr = TextEditingController(text: selectedCountry.name);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => RegistrationViewModel(),
//       child: Consumer<RegistrationViewModel>(
//         builder: (context, modal, child) => WillPopScope(
//           onWillPop: _onBackPressed,
//           child: ModalProgressHUD(
//             inAsyncCall: modal.state == ViewState.busy,
//             child: SafeArea(
//               child: Scaffold(
//                 backgroundColor: backgroundColor2,

//                 ///
//                 ///[custom-app-bar] starts from here
//                 ///
//                 appBar: CustomAppBar(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       IconButton(icon: Text(""), onPressed: () {}),
//                       // Container(),
//                       Text("Register",
//                           style: categoryTextStyle.copyWith(
//                             fontSize: 14,
//                           )),
//                       // Container(),
//                       Container(
//                         width: 50,
//                       ),
//                     ],
//                   ),
//                 ),

//                 ///
//                 ///[body] starts from here
//                 ///
//                 body: SingleChildScrollView(
//                   physics: BouncingScrollPhysics(),
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         left: 15, right: 15, top: 20.0, bottom: 160),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         ///
//                         ///full name
//                         ///
//                         fullName(modal),

//                         ///
//                         ///widget for  Date of birth
//                         ///
//                         dateOfBirth(modal),

//                         ///
//                         ///Select gender
//                         ///
//                         selectGender(modal),

//                         ///
//                         ///Nationality text field
//                         ///
//                         nationality(),

//                         ///
//                         ///finally[ next button] onpressed listener
//                         ///
//                         Padding(
//                           padding: const EdgeInsets.only(top: 85.2),
//                           child: RoundedBlueButton(
//                             text: "Next",

//                             ///
//                             ///here is the listener
//                             ///
//                             onPressed: () async {
//                               // print("test");
//                               ///setting previously setted phone number
//                               modal.body2.phoneNumber = widget.phoneNumber;

//                               //giving dummy values to DOB and Nationality

//                               modal.body2.dob = '19/march/2000';
//                               modal.body2.nationality = "Pakistani";
// //  print("test");
//                               if (_formkey.currentState.validate()) {
//                                 //save the currentstate of the form
//                                 _formkey.currentState.save();

//                                 ///finally do post request to Update user data or info
//                                 modal.reqUpdateUserData();
//                                 print("test");

//                                 ///
//                                 ///Next button [onPressed] listener
//                                 ///
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             AddUserVitalScreen()));
//                               }
//                             },
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   nationality() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 0.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 58.0),
//             child: Text(
//               "Nationality",
//               style: categoryTextStyle2,
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               print('nationality pressed');
//               goToChooseCountry();
//             },
//             child: TextFormField(
//               enabled: false,
//               controller: nationalityCtrlr,
//               onSaved: (value) {},
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return "Please fill the field";
//                 } else {
//                   return null;
//                 }
//               },
//               style: appBarTextStyle3,
//               textInputAction: TextInputAction.next,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   suffixIcon: Icon(Icons.keyboard_arrow_down),
//                   contentPadding: EdgeInsets.only(top: 14.0),
//                   hintText: "Input your nationality"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   dateOfBirth(RegistrationViewModel modal) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 0.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 58.0),
//             child: Text(
//               "Date of birth",
//               style: categoryTextStyle2,
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               showDateBottomSheet(modal);
//             },
//             child: TextFormField(
//               enabled: false,
//               controller: modal.dobController,
//               onSaved: (value) {
//                 modal.body2.dob = value;
//               },
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return "Please fill the field";
//                 } else {
//                   return null;
//                 }
//               },
//               style: appBarTextStyle3,
//               textInputAction: TextInputAction.next,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   suffixIcon: Icon(Icons.keyboard_arrow_down),
//                   contentPadding: EdgeInsets.only(top: 14.0),
//                   hintText: "Month/day/year"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   ///
//   ///select gender
//   ///
//   selectGender(RegistrationViewModel modal) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 48.0),
//           child: Text(
//             "Gender",
//             style: categoryTextStyle2,
//           ),
//         ),
//         Row(
//           children: <Widget>[
//             Radio(
//                 value: 1,
//                 groupValue: modal.genderValue,
//                 onChanged: modal.setGenderValue),
//             Padding(
//               padding: const EdgeInsets.only(left: 14.0, right: 88),
//               child: Text(
//                 "Male",
//                 style: categoryTextStyle.copyWith(fontSize: 14),
//               ),
//             ),
//             Radio(
//                 value: 2,
//                 groupValue: modal.genderValue,
//                 onChanged: modal.setGenderValue),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 14.0,
//               ),
//               child: Text(
//                 "Female",
//                 style: categoryTextStyle.copyWith(fontSize: 14),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   fullName(RegistrationViewModel modal) {
//     return Form(
//       key: _formkey,
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Text(
//                   "First name",
//                   style: categoryTextStyle2,
//                 ),
//                 TextFormField(
//                   onSaved: (value) {
//                     modal.body2.firstName = value;
//                   },
//                   validator: (value) {
//                     if (value.isEmpty) {
//                       return "Please fill the field";
//                     } else {
//                       return null;
//                     }
//                   },
//                   style: appBarTextStyle3,
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(top: 20.0),
//                       hintText: "Your Firt name"),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: 20,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Text(
//                   "Last name",
//                   style: categoryTextStyle2,
//                 ),
//                 TextFormField(
//                   onSaved: (value) {
//                     modal.body2.lastName = value;
//                   },
//                   validator: (value) {
//                     if (value.isEmpty) {
//                       return "Please fill the field";
//                     } else {
//                       return null;
//                     }
//                   },
//                   style: appBarTextStyle3,
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(top: 20.0),
//                       hintText: "Your Last name"),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   ///
//   ///on[ backpressed] call back to avoid user interaction with splash screen
//   ///
//   Future<bool> _onBackPressed() {
//     return showDialog(
//           context: context,
//           builder: (context) => new AlertDialog(
//             title: new Text('Are you sure?'),
//             content: new Text('Do you want to exit an App'),
//             actions: <Widget>[
//               new FlatButton(
//                 textColor: blueThemeColor,
//                 onPressed: () {
//                   Navigator.of(context).pop(false);
//                   // _updateConnectionFlag(true);
//                 },
//                 child: Text(
//                   "NO",
//                 ),
//               ),
//               SizedBox(height: 16),
//               new FlatButton(
//                 textColor: blueThemeColor,
//                 onPressed: () {
//                   exit(0);
//                 },
//                 child: Text("YES"),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   showDateBottomSheet(model) {
//     showModalBottomSheet(
//         backgroundColor: Colors.white,
//         context: context,
//         isScrollControlled: false,
//         useRootNavigator: true,
//         builder: (context) => DateBottomSheet(onClosed: (date) {
//               print(date);
//               model.dobController.text = date;
//               model.body2.dob = date;
//             }));
//   }

//   goToChooseCountry() async {
//     CountryModel result = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => CountryPage()),
//     );

//     nationalityCtrlr.text = "${result.name}";
//     selectedCountry = result;
//     setState(() {});
//   }
// }
