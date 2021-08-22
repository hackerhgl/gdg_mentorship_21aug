import 'package:flutter/material.dart';
import 'package:gdg_mentorship_21aug_flutter/screens/dummy.dart';
import 'package:gdg_mentorship_21aug_flutter/screens/home.dart';
import 'package:gdg_mentorship_21aug_flutter/screens/login.dart';
import 'package:gdg_mentorship_21aug_flutter/utils/space.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gdg_mentorship_21aug_flutter/configs/colors.dart';
import 'package:gdg_mentorship_21aug_flutter/routes.dart';
import 'package:gdg_mentorship_21aug_flutter/screens/signup.dart';
import 'package:gdg_mentorship_21aug_flutter/screens/splash.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: this.navigatorKey,
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: AppColors.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.light,
            onPrimary: AppColors.dark,
            padding: EdgeInsets.symmetric(
              vertical: Space.x2,
            ),
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(TextTheme()).copyWith(
          bodyText1: TextStyle(
            color: AppColors.light,
            fontWeight: FontWeight.w300,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: AppColors.grey,
          ),
          filled: true,
          fillColor: AppColors.dark2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.light),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.light),
          ),
        ),
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (_) => SplashScreen(),
        AppRoutes.signup: (_) => SignupScreen(),
        AppRoutes.home: (_) => HomeScreen(),
        AppRoutes.login: (_) => LoginScreen(),
        AppRoutes.dummy: (_) => DummyScreen(),
      },
    );
  }
}
