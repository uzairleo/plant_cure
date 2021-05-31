import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/screens/registration/registeration-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart';
// import '../../locator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final authDataService = locator<AuthDataService>();
  // final _dbService = locator<DatabaseService>();
  // final _locationService = locator<LocationService>();
  // final _geocodingService = locator<GeocodingApiService>();

  @override
  void initState() {
    _initialSetup();
    super.initState();
  }

  _initialSetup() async {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAll(
        () => RegistrationScreen(),
      );
    });
    // await authDataService.doSetup();
    // //using location service getting current CORDINATES
    // await _locationService.getCurrentLocation();
    // if (!_locationService.patientPosition.isNullOrBlank) {
    //   //initializing geoCoding APi Service of google for exact [reverse-geocoding] purpose
    //   await _geocodingService.initGeocodingService(
    //       lat: _locationService.patientPosition.latitude,
    //       lng: _locationService.patientPosition.longitude);
    //   //debuging
    //   print(
    //       "DEBUGGIGN=> ${_geocodingService.getStreetNumber()},${_geocodingService.getStreetRoute()},${_geocodingService.getCity()},${_geocodingService.getSubLocality()},${_geocodingService.getCountry()}, ");
    // }
    // //a little dummy delay of 1 second
    // await Future.delayed(Duration(seconds: 1));
    // getSignCode();
    // print('Login State: ${authDataService.isLogin}');
    // // getOnBoardings();
    // switch (authDataService.onBoardingStatus) {
    //   case 'onBoarding_1':
    //     print('onBoarding_1');
    //     Get.to(OnBoardingScreen(0));
    //     return;
    //   case 'onBoarding_2':
    //     print('onBoarding_2');
    //     Get.to(OnBoardingScreen(1));
    //     return;
    //   default:
    //     break;
    // }
    // if (authDataService.isLogin) {
    //   /// Now check if token is valid or not. If expired
    //   /// then generate a new token.
    //   /// If refresh is invalid as well, then navigate user to login screen
    //   final isTokenValid =
    //       await _dbService.verifyToken(authDataService.accessToken);
    //   if (!isTokenValid) {
    //     print('Access token is invalid');
    //     final RefreshTokenBody body =
    //         await _dbService.refreshToken(authDataService.refreshToken);
    //     if (!body.status) {
    //       print('Refresh token is invalid');
    //       await _dbService.logout();
    //       Get.off(LoginScreen());
    //       return;
    //     }
    //   }

    //   /// If token is valid, it means user is logged in.
    //   /// Just navigate to Root screen
    //   print('Token is valid');
    //   Get.off(RootScreen());
    // } else {
    //   Get.off(LoginScreen());
    // }
  }

//   getOnBoardings() {
//     switch (authDataService.onBoardingStatus) {
//       case 'onBoarding_1':

//         /// Go to first onboarding screen1
//         Get.to(OnBoardingScreen(0));
//         return;
//       case 'onBoarding_2':

//         /// Go to first onboarding screen2
//         Get.to(OnBoardingScreen(1));
//         return;
//       default:
//         break;
//     }
//   }

//   getSignCode() async {
// //    final signCode = await SmsAutoFill().getAppSignature;
// //    print("sign code $signCode");
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),

          ///Ebuddy official logo in the center
          Padding(
              padding: const EdgeInsets.only(
                bottom: 110.0,
              ),
              child: Hero(
                tag: 'splash',
                child: ImageContainer(
                  assetImage: "assets/static_assets/farmer_logo.png",
                  height: 257,
                  width: 298,
                ),
              )),
          //version info at bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text(
              "Project funded by\n HEC TDF ",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans()
                  .copyWith(fontSize: 16, color: Color(0XFF3B3B3B)),
            ),
          )
        ],
      ),
    );
  }
}
