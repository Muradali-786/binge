import 'package:binge/constant/images/image_constant.dart';
import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
          height: 182,
          width: 131,
          image: AssetImage(ImageConstant.bingeLogo)),
    );
  }
}
