import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/material.dart';

///
///This view model have all [ui logic] and [backend]  of all screens related home screen
///
///Here if we noticed i used [with] keyword instead of [extends] just because to [explore] the with keyword too
///below are the following features that with keyword can deliver in dart
///=> The with keyword in dart refers [mixins]
///=> mixins are used to acheive multiple inheritance in dart
///=> Also it help us to use parent class instances or methods without inheriting the parent class
///=> Mixins are a way of [reusing a class’s code] in multiple class hierarchies.
///=> Mixins help us to add [features] to a class
///
class RegistrationViewModel extends BaseViewModel {
  //********************************************************************** */
  ///
  // /All instances or variable initializing place
  ///
//********************************************************************** */

  //instance for accessing api repository authentication and registration/signUp function
  // ApiRepository apiRepo = new ApiRepository();

  // //instance for taking signup fields from user and than passing it to reqRegistration function
  // RegisterBody body = RegisterBody();

  // RegisterBody2 body2 = RegisterBody2();
  // LoginResponse response;
  // final _dbService = locator<DatabaseService>();

  bool isAgreementSelected = false; //for agreement check purpose
  bool passwordVisible = false; //for agreement check purpose
  bool confirmPasswordVisible = false; //for agreement check purpose

  //variables for obscure textfield password and confirm paswdrd
  bool isPassword = true;
  bool isConfirmPassword = true;

  ///text controllers for registeration fiedls

  var emailCntrlr = TextEditingController();
  var fullNameCtlr = TextEditingController();
  var passwordCtrl = TextEditingController();
  var confirmPswrdCtrl = TextEditingController();

  //controller for password and confirm passwrd

  var passwrdController = TextEditingController();
  var confirmPasswrdControler = TextEditingController();

  //variable for radio buttons of Gender selection
  var genderValue = 0;

  ///********************************************************************** */
  ///
  ///All member instances/variable initializing place
  ///
//********************************************************************** */

  ///
  ///A function that will request for Registration to Database
  ///
//   requestRegistration() async {
//     setState(ViewState.busy);
//     response = await apiRepo.reqRegister(body);
//     setState(ViewState.idle);

//     notifyListeners();
//   }

//   //onphone number changed callback
// //  void onPhoneNumberChange(
// //      String number, String internationalizedPhoneNumber, String isoCode) {
// //    phoneNumber = number;
// //    phoneIsoCode = isoCode;
// //    notifyListeners();
// //  }

//   //set check box
  setAgreementCheckBox(value) {
    isAgreementSelected = value;
    notifyListeners();
  }

// //setting password obscure text
//   setPasswordObscureText() {
//     isPassword = !isPassword;
//     notifyListeners();
//   }

// //setting password obscure text
//   setConfirmPasswordObscureText() {
//     isConfirmPassword = !isConfirmPassword;
//     notifyListeners();
//   }

// //show error dialog box
//   showPhoneErrorDialog(context) {
//     showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//               title: Text("Registration Error"),
//               content: Text("Phone number must not be empty."),
//               actions: <Widget>[
//                 new FlatButton(
//                   textColor: blueThemeColor,
//                   child: Text("OK"),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 )
//               ],
//             ));
//   }

// //this function will set the gender value
//   setGenderValue(value) {
//     genderValue = value;
//     body2.gender = (genderValue == 1) ? 'M' : 'F';
//     notifyListeners();
//   }

//   ///
//   ///This function is used to do a post request to custom backend for updating user purpose
//   ///
//   reqUpdateUserData() async {
//     setState(ViewState.busy);

//     await apiRepo.reqUpdateUser(body2);
//     setState(ViewState.idle);

//     notifyListeners();
//   }

//   void reqNewOtp() {
//     final otpBody = OtpBody(body.phoneNumber);
//     _dbService.reqOtp(otpBody);
  // }
}
