import 'package:flutter/material.dart';

import 'screens/home.dart';

class AppRoutes extends StatelessWidget {
  const AppRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (_) => HomeScreen(),
      },
    );
  }
}
