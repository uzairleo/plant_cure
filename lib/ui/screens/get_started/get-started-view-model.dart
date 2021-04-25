// import 'dart:async';

// import 'package:ebuddy_networking_app/core/view_models/base_view_model.dart';

// class GetStartedViewModel extends BaseViewModel {
//   GetStartedViewModel() {
//     init();
//   }
//   int getStarted = 0;
//   Timer timer;
//   init() async {
//     print("Init getStarted Viewmodel");
//     await changePicPeriodically();
//   }

//   ///
//   ///This function will change the asset periodically using listener
//   ///
//   changePicPeriodically() async {
//     timer = Timer.periodic(Duration(seconds: 3), (timer) async {
//       print("waya kana rora");
//       if (getStarted == 0) {
//         getStarted = 1;
//       } else if (getStarted == 1) {
//         getStarted = 2;
//       } else if (getStarted == 2) {
//         getStarted = 3;
//       } else if (getStarted == 3) {
//         getStarted = 4;
//       } else if (getStarted == 4) {
//         getStarted = 0;
//       }

//       notifyListeners();
//     });
//   }

//   @override
//   void dispose() {
//     timer.cancel();
//     timer = null;
//     super.dispose();
//   }
// }
