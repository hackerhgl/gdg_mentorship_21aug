import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  static final route = 'map';
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = [
      "ha@gmail.com",
      "ha@gmail.com",
      "ha@gmail.com",
      "ha@gmail.com",
      "ha@gmail.com",
      "ha@gmail.com",
      "ha@gmail.com",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Screen"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
