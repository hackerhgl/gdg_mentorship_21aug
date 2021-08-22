import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flash/flash.dart';

import 'package:gdg_mentorship_21aug_flutter/configs/colors.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gdg_mentorship_21aug_flutter/routes.dart';
import 'package:gdg_mentorship_21aug_flutter/utils/space.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  void _showBasicsFlash(
    BuildContext context,
    String text,
  ) {
    showFlash(
      context: context,
      duration: Duration(seconds: 1),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Text(
              text,
              style: TextStyle(
                color: AppColors.dark,
              ),
            ),
          ),
        );
      },
    );
  }

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
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: Space.x2),
            child: FormBuilder(
              key: this.formKey,
              initialValue: {
                "name": "Hamza",
                "email": "hamza@gmail.com",
                "password": "hamza1",
              },
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
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        context,
                        errorText: "Please enter your full name",
                      ),
                      FormBuilderValidators.minLength(context, 3),
                      FormBuilderValidators.maxLength(context, 40),
                    ]),
                  ),
                  SizedBox(height: Space.x2),
                  FormBuilderTextField(
                    name: 'email',
                    decoration: InputDecoration(labelText: "Email"),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        context,
                        errorText: "Please enter your email address",
                      ),
                      FormBuilderValidators.email(
                        context,
                        errorText: "Please enter a valid email address",
                      ),
                    ]),
                  ),
                  SizedBox(height: Space.x2),
                  FormBuilderTextField(
                    name: 'password',
                    obscuringCharacter: '*',
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        context,
                        errorText: "Please enter your password",
                      ),
                      FormBuilderValidators.minLength(
                        context,
                        6,
                        errorText:
                            "Password should be at least 6 characters long",
                      ),
                    ]),
                  ),
                  SizedBox(height: Space.x5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: AppColors.grey),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          AppRoutes.login,
                        ),
                        child: Text("Login"),
                      ),
                    ],
                  ),
                  // SizedBox(height: Space.x3),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, AppRoutes.dummy);
                  //   },
                  //   child: Text(
                  //     "PUSH",
                  //     style: TextStyle(
                  //       color: AppColors.dark,
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushReplacementNamed(context, AppRoutes.dummy);
                  //   },
                  //   child: Text(
                  //     "PUSH REPLACE",
                  //     style: TextStyle(
                  //       color: AppColors.dark,
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: Space.x3),
                  ElevatedButton(
                    onPressed: () async {
                      final flag = this.formKey.currentState!.saveAndValidate();
                      if (flag) {
                        final data = this.formKey.currentState!.value;
                        final String email = data['email'];
                        final String password = data['password'];
                        final String name = data['name'];
                        try {
                          _showBasicsFlash(context, "Loading");
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );

                          await userCredential.user?.updateDisplayName(name);

                          _showBasicsFlash(context, "user registered");
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.home,
                          );
                        } on FirebaseAuthException catch (e) {
                          var text = "FAILED";
                          if (e.code == 'weak-password') {
                            text = 'The password provided is too weak.';
                          } else if (e.code == 'email-already-in-use') {
                            text = 'The account already exists for that email.';
                          }
                          _showBasicsFlash(context, text);
                        } catch (e) {
                          print(e);
                        }
                      }
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
