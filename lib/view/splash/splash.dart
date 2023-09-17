import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/view_model/services/splash_services.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: Center(
        child: Image(
            height: 192,
            width:267,
            image: AssetImage(ImageConstant.bingeLogo)),
      ),
    );
  }
}
