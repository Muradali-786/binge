import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,

      appBar: CustomAppBar(titleText: 'Setting', preferredHeight: 56,showIcon: true,),
      body: Column(
        children: [

        ],
      ),
    );
  }
}

