import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 50,
              ),
              child: Text("Symmetric"),
            ),
            Text("Hello 1"),
            Text("Hello 2"),
            Text("Hello 3"),
            Text("wow"),
          ],
        ),
      ),
    );
  }
}
