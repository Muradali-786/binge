import 'package:binge/view/login/login.dart';
import 'package:binge/view/otp/otp.dart';
import 'package:binge/view/profile/acount_setup/acount_setup.dart';
import 'package:binge/view/profile/age/age_selection.dart';
import 'package:binge/view/profile/profile_setup.dart';
import 'package:binge/view/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/view/home/home.dart';
import 'package:binge/view/splash/splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case RouteName.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case RouteName.login:
        return MaterialPageRoute(builder: (_) => const Login());
      case RouteName.otp:
        return MaterialPageRoute(builder: (_) => const OTP());
      case RouteName.profileSetup:
        return MaterialPageRoute(builder: (_) => const ProfileSetup());
      case RouteName.ageSelection:
        return MaterialPageRoute(builder: (_) => const AgeSelection());
      case RouteName.accountSetup:
        return MaterialPageRoute(builder: (_) => const AccountSetup());




      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const Home());



      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
