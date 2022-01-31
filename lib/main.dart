import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/ui/screens/add_crops/add-crop-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'core/constants/colors.dart';
import 'locator.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// All initial setup
  await Firebase.initializeApp();

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
            title: 'Plant Cure',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: mainThemeColor,
              accentColor: mainThemeColor,
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: mainThemeColor,
                selectionColor: mainThemeColor.withOpacity(0.4),
                selectionHandleColor: Colors.orange,
              ),
            ),
            home: SplashScreen(),
          ),
        ));
  }
}
