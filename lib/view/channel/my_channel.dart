import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:binge/view/home/home.dart';
import 'package:flutter/material.dart';

class MyChannel extends StatefulWidget {
  const MyChannel({super.key});

  @override
  State<MyChannel> createState() => _MyChannelState();
}

class _MyChannelState extends State<MyChannel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      appBar: CustomAppBar(
        titleText: 'My Channels',
        preferredHeight: 56,
        leadingImage: Image.asset(ImageConstant.boxIcon),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 4,bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                    height: 101,
                    width: double.infinity,
                    image: AssetImage(ImageConstant.randommovement)),
                ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(ImageConstant.ellipseImg),
                    ),
                  ),
                  title: Text('Catlin Grim Plays', style: AppStyles().catamaran(24, AppColor.kWhite, FontWeight.w400),),
                  subtitle: Text('1.2k subscribers', style: AppStyles().catamaran(12, AppColor.kWhite, FontWeight.w400),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 20,bottom: 20),
                  child: Row(
                    children: [
                      Text("Most Watched Shows", style: AppStyles().montserrat(18, AppColor.kWhite, FontWeight.w700),),
                      const SizedBox(width: 10,),
                      const Icon(Icons.arrow_forward_ios, color: AppColor.kWhite, size: 15, weight: 6,)
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: ImageConstant().categoriesCinemaList.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    childAspectRatio: 181 / 141,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image(
                        height: 141,
                        width: 181,
                        image: AssetImage(ImageConstant()
                            .categoriesCinemaList[index]));
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}













