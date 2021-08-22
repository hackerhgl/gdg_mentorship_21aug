import 'package:flutter/material.dart';
import 'package:gdg_mentorship_21aug_flutter/configs/colors.dart';
import 'package:gdg_mentorship_21aug_flutter/routes.dart';
import 'package:gdg_mentorship_21aug_flutter/screens/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: AppColors.dark,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: AppColors.light,
          ),
        ),
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (_) => SplashScreen(),
      },
    );
  }
}
