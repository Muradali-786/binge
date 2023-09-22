import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/view/home/watch_movie/watch_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({super.key});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  List<String> movieNames = [
    'Soul(1920)',
    'Knives(2020)',
    'Soul(1920)',
    'Knives(2020)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColor.kWhite,
                )),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  height: 351,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageConstant.meg4))
                ),
                child: Center(child: InkWell

                  (
                    onTap: (){
                      // Navigator.pushNamed(context, RouteName.watchMovie);
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: WatchMovie(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Image(image: AssetImage(ImageConstant.pauseIcon))),),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meg 2 : The Trench',
                    style: AppStyles().quickSand(
                        24, AppColor.kTextWhiteColor, FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Row(
                      children: [
                        Image(image: AssetImage(ImageConstant.timerIcon)),
                        const SizedBox(width: 5),
                        Text('152 minutes',
                            style: AppStyles().quickSand(
                                12, AppColor.kTextWhiteColor, FontWeight.w700)),
                        const SizedBox(width: 25),
                        Image(image: AssetImage(ImageConstant.starIcon)),
                        const SizedBox(width: 5),
                        Text('7.0 ( IMD)',
                            style: AppStyles().quickSand(
                                12, AppColor.kTextWhiteColor, FontWeight.w700)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      thickness: 1,
                      color: AppColor.kWhite.withOpacity(0.2),
                    ),
                  ),
                  Text('Synopsis',
                      style: AppStyles().quickSand(
                          20, AppColor.kTextWhiteColor, FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                                'Lorem ipsum dolor sit amet consectetur. At interdum nec egestas risus. Varius et cursus arcu mauris nunc volutpat et vulputate. Felis tellus tempus varius cursus etiam sed id justo. Mi turpis at cursus et. Cum urna ut amet dignissim. Scelerisque orci. Lorem ipsum dolor sit amet consectetur. At interdum nec egestas risus. Varius et cursus arcu mauris nunc volutpat et vulputate. Felis tellus tempus varius cursus etiam sed id justo. Mi turpis at cursus et. Cum urna ut amet dignissim. Scelerisque orci. Lorem ipsum dolor sit amet consectetur. At interdum nec egestas risus. Varius et cursus arcu mauris nunc volutpat et vulputate. Felis tellus tempus varius cursus etiam sed id justo. Mi turpis at cursus et. Cum urna ut amet dignissim. Scelerisque orci.',
                                style: AppStyles().quickSand(12,
                                    AppColor.kTextWhiteColor, FontWeight.w400)))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('You May Also Like',
                          style: AppStyles().montserrat(
                              16, AppColor.kTextWhiteColor, FontWeight.w700)),
                      Text('View All',
                          style: AppStyles().quickSand(
                              8, AppColor.kTextPinkColor, FontWeight.w400))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image(
                                  height: 140,
                                  width: 120,
                                  image: AssetImage(
                                      ImageConstant().movieList[index])),
                              Text(movieNames[index],
                                  style: AppStyles().quickSand(
                                      12,
                                      AppColor.kTextWhiteColor,
                                      FontWeight.w700))
                            ],
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
