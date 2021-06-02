// import 'package:ebuddy_networking_app/core/view_models/base_view_model.dart';

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
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/material.dart';

class HomeViewModal extends BaseViewModel {
  //********************************************************************** */
  ///
  ///All instances or variable initializing place
  ///
//********************************************************************** */
  // final _dbService = locator<DatabaseService>();
  // final _locationService = locator<LocationService>();

  List<Crop> availableCrops = [];

  HomeViewModal(crops) {
    availableCrops = crops;
    if (availableCrops.where((element) => element.isSelected).isEmpty) {
      print("NO crop is selected so i selected the first one");
      availableCrops.first.isSelected = true;
    } else {}
  }
}
