import 'package:flutter/material.dart';
import 'package:gdg_mentorship_21aug_flutter/utils/space.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(),
          SizedBox(height: Space.x2),
          Text("We are setting things up"),
        ],
      ),
    );
  }
}
