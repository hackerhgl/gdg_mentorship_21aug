import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}
