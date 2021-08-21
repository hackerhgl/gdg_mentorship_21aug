import 'package:flutter/material.dart';

import 'screens/splash.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "splash",
      routes: {
        "splash": (_) => LogInScreen(),
      },
    );
  }
}
