// import 'package:firebase_core/firebase_core.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-screen.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/community/community-screen.dart';
import 'package:farmer_assistant_app/ui/screens/home/home-screen.dart';
import 'package:farmer_assistant_app/ui/screens/localization/select-locale-screen.dart';
import 'package:farmer_assistant_app/ui/screens/location/location-screen.dart';
import 'package:farmer_assistant_app/ui/screens/registration/registeration-screen.dart';
import 'package:farmer_assistant_app/ui/screens/root-screen.dart';
import 'package:farmer_assistant_app/ui/screens/root-screen.dart';
import 'package:farmer_assistant_app/ui/screens/splash_screen.dart';
import 'package:farmer_assistant_app/ui/screens/user-info/user-info-screen.dart';
// import 'package:ebuddy_networking_app/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'core/constants/colors.dart';
import 'core/constants/strings.dart';
import 'core/models/crop.dart';
import 'locator.dart';

void main()
// async
{
  // WidgetsFlutterBinding.ensureInitialized();

  /// All initial setup
  // await Firebase.initializeApp();

  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AddCropViewModel()),
        ],
        child:
            // LifeCycleManager(
            // child:
            ScreenUtilInit(
          designSize: Size(412, 847),
          builder: () => GetMaterialApp(
            title: 'Farmer_Assistant_App',
            debugShowCheckedModeBanner: true,
            theme: ThemeData(
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: mainThemeColor,
                selectionColor: mainThemeColor.withOpacity(0.4),
                selectionHandleColor: Colors.orange,
              ),
            ),
            home: AddCropScreen(),
            //  HomeScreen(
            //   addedCrops: [
            //     Crop(
            //         id: "1",
            //         imgUrl: "$assets/apple.png",
            //         name: "Apple",
            //         color: Colors.redAccent.withOpacity(0.4)),
            //     Crop(
            //       id: "2",
            //       imgUrl: "$assets/banana.png",
            //       name: "Banana",
            //       color: Color(0XFFFFC61E),
            //     ),
            //     Crop(
            //         id: "1",
            //         imgUrl: "$assets/beans.png",
            //         name: "Beans",
            //         color: Colors.green.withOpacity(1))
            //   ],
            // )
            //  UserInfoScreen()
            // CommunityScreen()
            //  SplashScreen()
            // RootScreen()
            // AddCropScreen()
            // LocationScreen()
            // SelectLocaleScreen()
            // RegistrationScreen()
            // SplashScreen()
            //  InviteFriendScreen()
            //  PushNotificationSettingScreen()
            // PasswordRecoveryScreen()
            // LoginScreen(),
            //  RegistrationScreen(),
            //  GetStartedScreen()
            //  OnBoardingScreen()
            // ),
            // ),
          ),
        ));
  }
}
