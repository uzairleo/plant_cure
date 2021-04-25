// import 'package:ebuddy_networking_app/core/view_models/base_view_model.dart';
// import 'package:flutter/cupertino.dart';

// ///
// ///This view model have all [ui logic] and [backend]  of all screens related home screen
// ///
// ///Here if we noticed i used [with] keyword instead of [extends] just because to [explore] the with keyword too
// ///below are the following features that with keyword can deliver in dart
// ///=> The with keyword in dart refers [mixins]
// ///=> mixins are used to acheive multiple inheritance in dart
// ///=> Also it help us to use parent class instances or methods without inheriting the parent class
// ///=> Mixins are a way of [reusing a class’s code] in multiple class hierarchies.
// ///=> Mixins help us to add [features] to a class
// ///
// class LoginViewModal extends BaseViewModel {
//   //********************************************************************** */
//   ///
//   ///All instances or variable initializing place
//   ///
// //********************************************************************** */

//   // //instance for accessing api repository authentication and registration/signUp function
//   // ApiRepository _apiRepo = new ApiRepository();

//   // //instance for taking signup fields from user and than passing it to reqLogin function
//   // LoginBody body = LoginBody();
//   // LoginResponse response;

// //variable for password obscure staate managing
//   bool passwordVisible = true;

//   var emailCntrlr = TextEditingController();
//   var passwordCtrl = TextEditingController();

//   ///********************************************************************** */
//   ///
//   ///All function/defining place
//   ///
// //********************************************************************** */

//   ///
//   ///Request Login function
// //   ///
// //   requestLogin() async {
// //     setState(ViewState.busy);
// //     response = await _apiRepo.reqLogin(body);
// //     setState(ViewState.idle);
// //   }

// // //setting password obscure text
// //   togglePasswordObscureText() {
// //     isPasswordVisible = !isPasswordVisible;
// //     notifyListeners();
// //   }
// }
