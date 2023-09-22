import 'package:binge/constant/images/image_constant.dart';
import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  double height,width;
   LogoImage({super.key,this.height=141,this.width=192});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.bingeLogo)),
            )));
  }
}
