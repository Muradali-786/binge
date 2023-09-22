import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:binge/view/home/home.dart';
import 'package:flutter/material.dart';

class Channels extends StatefulWidget {
  const Channels({super.key});

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      appBar: CustomAppBar(
        titleText: 'Channels',
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
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(ImageConstant.cinemaImg) )
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 30,
                        left: 27,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shows: 158',style: AppStyles()
                                .openSans(12, AppColor.kTextWhiteColor, FontWeight.w700),),
                            Text('A+ cinema ',style: AppStyles()
                                .poppins(24, AppColor.kTextWhiteColor, FontWeight.w900),),
                            Text('Featured',style: AppStyles()
                                .openSans(12, AppColor.kTextWhiteColor, FontWeight.w700),),
                            const SizedBox(width: 8,),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child:  Image(image: AssetImage(ImageConstant.dandi)),
                        ),
                      )
                    ],
                  ),
                ),
                const MovieList(title: 'Mostly Watched'),
                Padding(
                  padding: const EdgeInsets.only(top:20,bottom: 12),
                  child: Row(
                    children: [
                      Text(
                        'Top 10 in your country',
                        style: AppStyles()
                            .openSans(18, AppColor.kTextWhiteColor, FontWeight.w700),
                      ),
                      const SizedBox(width: 5,),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColor.kWhite,
                        size: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 186,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return   Image(
                            height: 185,
                            width: 235,
                            image: AssetImage(ImageConstant.listone));

                      }),
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












