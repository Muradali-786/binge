import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/size_config.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('welcome to the flutter app'),),
      body: Column(
        children: [
         // SizeConfig.isMobile(context)
         //      ? MobileWidget()
         //      : DesktopWidget(),
          
         Container(
           height: 100,
           width: 100,
           child:  Image(image: AssetImage(ImageConstant.bingeLogo)),
         )
        ],
      ),
    );
  }
}
class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Login',style:AppStyles().poppins(18, AppColor.kBlack, FontWeight.w700));
  }
}
class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('khan we are on the pc');
  }
}

