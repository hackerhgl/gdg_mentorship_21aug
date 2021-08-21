import 'package:flutter/material.dart';

import 'columns.dart';

class HomeScreen extends StatelessWidget {
  static final route = "home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Text("Home screen"),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, ColumnsScreen.route),
            child: Text("Column Screen"),
          ),
        ],
      ),
    );
  }
}
