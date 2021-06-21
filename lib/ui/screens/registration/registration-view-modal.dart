import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/models/register-body.dart';
import 'package:farmer_assistant_app/core/services/auth_data_service.dart';
import 'package:farmer_assistant_app/core/services/database_service.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:farmer_assistant_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  // //instance for taking signup fields from user and than passing it to reqRegistration function
  RegisterBody registerBody = RegisterBody();

  final _dbService = locator<DatabaseService>();
  final _authDataService = locator<AuthDataService>();

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
  requestRegistration() async {
    setState(ViewState.loading);
    try {
      await _dbService.registerUser(registerBody);
      await _authDataService.updateIsRegisterFirstTime(true);
    } catch (e, s) {
      print("FirebaseException/RequestRegistration=> $e, \n stacktrace =>$s");
      Get.defaultDialog(title: "Firebase Exception", content: Text("$e"));
    }
    setState(ViewState.idle);
  }
}
