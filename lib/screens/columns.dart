import 'package:flutter/material.dart';

class ColumnsScreen extends StatelessWidget {
  static final route = "columns";

  const ColumnsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Go back"),
            ),
            Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 50,
              ),
              child: Text("Symmetric"),
            ),
            Text("Hello 2"),
            Text("Hello 3"),
            Text("wow"),
          ],
        ),
      ),
    );
  }
}
