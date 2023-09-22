import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Cinema extends StatefulWidget {
  const Cinema({super.key});

  @override
  State<Cinema> createState() => _CinemaState();
}

class _CinemaState extends State<Cinema> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      appBar: CustomAppBar(
        titleText: 'A+ Channels',
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
                  height: 180,
                  width: double.infinity,
                  image: AssetImage(ImageConstant.cinemaImg),
                  fit: BoxFit.cover,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(ImageConstant.ellipseImg),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 20),
                  child: Row(
                    children: [
                      Text("All Shows / Movies", style: AppStyles().montserrat(18, AppColor.kWhite, FontWeight.w700),),
                      const SizedBox(width: 10,),
                      const Icon(Icons.arrow_forward_ios, color: AppColor.kWhite, size: 15, weight: 6,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 142,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Row(
                        children: [
                          listSlider(ImageConstant.sliderImg1, 142, 181), // First image
                          listSlider(ImageConstant.sliderImg2, 142, 181),
                          listSlider(ImageConstant.sliderImg1, 142, 181), // First image
                          listSlider(ImageConstant.sliderImg2, 142, 181),
                          listSlider(ImageConstant.sliderImg1, 142, 181), // First image
                          listSlider(ImageConstant.sliderImg2, 142, 181), // Second image
                        ],
                      )
                    ],
                  ),
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

Widget listSlider(image, double height, double width) {
  return Container(
    height: height,
    width: width,
    margin: const EdgeInsets.only(right: 6.0),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}







