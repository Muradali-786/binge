import 'package:binge/view/create_channel/create_channel.dart';
import 'package:binge/view/home/categories/categories.dart';
import 'package:binge/view/home/movie_detail/movie_detail.dart';
import 'package:binge/view/home/watch_movie/watch_movie.dart';
import 'package:binge/view/login/login.dart';
import 'package:binge/view/movies/movies.dart';
import 'package:binge/view/otp/otp.dart';
import 'package:binge/view/profile/acount_setup/acount_setup.dart';
import 'package:binge/view/profile/age/age_selection.dart';
import 'package:binge/view/profile/profile_setup.dart';
import 'package:binge/view/sign_up/sign_up.dart';
import 'package:binge/view/upload_movie/upload_movie.dart';
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
      case RouteName.createChannel:
        return MaterialPageRoute(builder: (_) => const CreateChannel());
      case RouteName.uploadMovie:
        return MaterialPageRoute(builder: (_) => const UploadMovie());
      case RouteName.movieDetail:
        return MaterialPageRoute(builder: (_) => const MovieDetail());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const Home());
      case RouteName.categories:
        return MaterialPageRoute(builder: (_) => const Categories());
      case RouteName.watchMovie:
        return MaterialPageRoute(builder: (_) => const WatchMovie());
      case RouteName.movies:
        return MaterialPageRoute(builder: (_) => const Movies());


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
