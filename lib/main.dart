// import 'package:firebase_core/firebase_core.dart';
import 'package:farmer_assistant_app/ui/screens/localization/select-locale-screen.dart';
import 'package:farmer_assistant_app/ui/screens/registration/registeration-screen.dart';
import 'package:farmer_assistant_app/ui/screens/splash_screen.dart';
// import 'package:ebuddy_networking_app/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:provider/provider.dart';
import 'core/constants/colors.dart';
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
    return
        //  MultiProvider(
        //   providers: [

        //   ],
        //   child:
        // LifeCycleManager(
        // child:
        GetMaterialApp(
            title: 'Farmer_Assistant_App',
            debugShowCheckedModeBanner: true,
            theme: ThemeData(
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: mainThemeColor,
                selectionColor: mainThemeColor.withOpacity(0.4),
                selectionHandleColor: Colors.orange,
              ),
            ),
            home: SelectLocaleScreen()
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
            );
  }
}
