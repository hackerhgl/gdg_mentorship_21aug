import 'package:flutter/material.dart';

import 'package:gdg_mentorship_21aug_flutter/configs/colors.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gdg_mentorship_21aug_flutter/utils/space.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // FocusScope.of(context).unfocus();
          final FocusScopeNode currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Space.x2),
            child: FormBuilder(
              key: this.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: Space.x3),
                  Text(
                    "Let's Sign you up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: Space.x1),
                  Text(
                    "Welcome\nSign you up",
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 26,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: Space.x3),
                  SizedBox(height: Space.x3),
                  SizedBox(height: Space.x3),
                  FormBuilderTextField(
                    name: 'name',
                    decoration: InputDecoration(labelText: "Full Name"),
                  ),
                  SizedBox(height: Space.x2),
                  FormBuilderTextField(
                    name: 'email',
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  SizedBox(height: Space.x2),
                  FormBuilderTextField(
                    name: 'password',
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  SizedBox(height: Space.x5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: AppColors.grey),
                      ),
                      GestureDetector(child: Text("Login")),
                    ],
                  ),
                  SizedBox(height: Space.x3),
                  ElevatedButton(
                    // style: ButtonStyle(
                    //   backgroundColor: AppColors.light,
                    // ),
                    onPressed: () {
                      print("Test");
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: AppColors.dark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
