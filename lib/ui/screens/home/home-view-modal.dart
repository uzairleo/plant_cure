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
import 'dart:io';
import 'package:daylight/daylight.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:weather/weather.dart';

const String WEATHER_API_KEY = "d9cf5e471c90e4a8c6066bf663af0147";

class HomeViewModal extends BaseViewModel {
  //********************************************************************** */
  ///
  ///All instances or variable initializing place
  ///
//********************************************************************** */
  // final _dbService = locator<DatabaseService>();
  // final _locationService = locator<LocationService>();

  List<Crop> availableCrops = [];

  //instance for picking image
  final ImagePicker imagePicker = ImagePicker();
  WeatherFactory wf = new WeatherFactory(WEATHER_API_KEY);

//variable for holding selected image
  File selectedImageFile;

  List<Asset> images = [];
  List<String> imagesPath = [];

  HomeViewModal(crops) {
    availableCrops = crops;
    if (availableCrops.where((element) => element.isSelected).isEmpty) {
      print("NO crop is selected so i selected the first one");
      availableCrops.first.isSelected = true;
    } else {}
    // getCurrentWeather();
    // calculateSunSet();
  }
  // Weather weather;
  bool isWeatherLoaded = true;
  // getCurrentWeather() async {
  //   try {
  //     setState(ViewState.loading);
  //     isWeatherLoaded = false;

  //     // await wf.currentWeatherByLocation(lat, lon);
  //     weather = await wf.currentWeatherByCityName('peshawar');

  //     print("Current Weather =====> ${weather.temperature}");
  //     isWeatherLoaded = true;
  //     setState(ViewState.idle);
  //   } catch (e) {
  //     print("GetCurrentWeatherException======>$e");

  //     setState(ViewState.idle);
  //   }
  // }

  pickGalleryImage() async {
    setState(ViewState.loading);

    final imageFile = await imagePicker.getImage(
        source: ImageSource
            .gallery); //it returned picked file which we can convert once picked to file type
    if (imageFile != null) {
      print('Picked file from Gallery: ${imageFile.path.toString()}');
      selectedImageFile = File(imageFile.path);
      setState(ViewState.idle);
      return selectedImageFile;
    }
  }

  pickCameraImage() async {
    setState(ViewState.loading);
    final imageFile = await imagePicker.getImage(source: ImageSource.camera);
    if (imageFile != null) {
      print('Picked file from Camera: ${imageFile.path.toString()}');
      selectedImageFile = File(imageFile.path);
      setState(ViewState.idle);
      return selectedImageFile;
    }
    notifyListeners();
  }

//this function will set the local selected image file
  setSelectedImageFile(File file) {
    this.selectedImageFile = file;
    notifyListeners();
  }

  // calculateSunSet() async {
  //   // setState(ViewState.loading);
  //   const daylighlocation = const DaylightLocation(37.4219795, -122.0846826);
  //   final datetime = DateTime(2020, 10, 15);

  //   // Create sunset calculator
  //   const sunsetCalculator = const DaylightCalculator(daylighlocation);

  //   // calculate for sunrise on civil twilight
  //   final civilSunrise = sunsetCalculator.calculateEvent(
  //     datetime,
  //     Zenith.official,
  //     EventType.sunrise,
  //   );
  //   print(DateFormat("HH:mm:ss").format(civilSunrise)); // utc: 04:58:18
  //   // calculate for sunrise and sunset on astronomical twilight
  //   final astronomicalEvents = sunsetCalculator.calculateForDay(
  //     datetime,
  //     Zenith.official,
  //   );
  //   print("*******************************************************");
  //   print(
  //     DateFormat("HH:mm:ss").format(astronomicalEvents.sunset),
  //   ); // utc: 18:03:55
  //   print(
  //     DateFormat("HH:mm:ss").format(astronomicalEvents.sunrise),
  //   ); // utc: 03:39:09
  //   print("*******************************************************");
  //   print(astronomicalEvents.type); // DayType.sunriseAndSunset

  //   print("*******************************************************");
  //   notifyListeners();
  // }
}
