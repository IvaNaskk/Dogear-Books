import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';

class LoginAndSignup extends StatefulWidget {
  const LoginAndSignup({Key? key});

  @override
  _LoginAndSignupState createState() => _LoginAndSignupState();
}

class _LoginAndSignupState extends State<LoginAndSignup> {
  bool isLoggingIn = true;

  void togglePage() {
    setState(() {
      isLoggingIn = !isLoggingIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoggingIn) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else {
      return SignupPage(
        onPressed: togglePage,
      );
    }
  }
}
