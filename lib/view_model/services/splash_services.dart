import 'dart:async';
import 'package:binge/utils/route/route_name.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushNamed(context, RouteName.authPage)

    );
  }
}
