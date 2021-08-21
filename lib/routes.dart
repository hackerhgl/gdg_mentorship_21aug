import 'package:flutter/material.dart';

import 'screens/columns.dart';
import 'screens/home.dart';
import 'screens/rows.dart';

class AppRoutes extends StatelessWidget {
  const AppRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        HomeScreen.route: (_) => HomeScreen(),
        ColumnsScreen.route: (_) => ColumnsScreen(),
        RowsScreen.route: (_) => RowsScreen(),
      },
    );
  }
}
