import 'package:binge/constant/app_style/app_color.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: Text('signup'),
    );
  }
}
