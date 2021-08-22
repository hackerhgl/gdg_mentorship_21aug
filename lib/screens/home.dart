import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdg_mentorship_21aug_flutter/configs/colors.dart';
import 'package:gdg_mentorship_21aug_flutter/routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ins = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = ins.currentUser;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text("Hello ${user?.displayName}"),
            ),
            ElevatedButton(
              onPressed: () async {
                await ins.signOut();
                Navigator.pushReplacementNamed(context, AppRoutes.signup);
              },
              child: Text(
                "LogOUt",
                style: TextStyle(
                  color: AppColors.dark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
