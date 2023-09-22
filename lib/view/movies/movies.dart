import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/view/home/home.dart';
import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      appBar: CustomAppBar(titleText: 'Movies', preferredHeight: 60,showIcon: false,leadingImage: Image.asset(ImageConstant.boxIcon),),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 9, right: 5,bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RouteName.movieDetail);
                    },
                    child: Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(ImageConstant.meg2Image) )
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:85 ,right: 70),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('HBO',style: AppStyles()
                                      .openSans(12, AppColor.kTextWhiteColor, FontWeight.w700),),
                                  Text('Meg2:The Trench ',style: AppStyles()
                                      .poppins(24, AppColor.kTextWhiteColor, FontWeight.w900),),
                                ],
                              ),

                            ),
                          ),
                          Positioned(
                            bottom: 23,
                            left: 40,
                            child: Row(
                              children: [
                                Text('Resolution:4k',style: AppStyles()
                                    .openSans(12, AppColor.kTextWhiteColor, FontWeight.w700),),
                                const SizedBox(width: 8,),
                                Text('Runtime 1hr,37min ',style: AppStyles()
                                    .openSans(12, AppColor.kTextWhiteColor, FontWeight.w700),),
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
                  ),
                  const MovieList(title: 'Free to Watch'),
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
                              image: AssetImage(ImageConstant.topIstMovieImage));

                        }),
                  ),
                  const MovieList(title: 'Feature'),
                  const MovieList(title: 'Action'),
                  const MovieList(title: 'Adventure'),
                  const MovieList(title: 'Animation'),
                ],
              ),
            ),
          ))
    );
  }
}



