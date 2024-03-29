import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/view/home/categories/categories.dart';
import 'package:binge/view/home/movie_detail/movie_detail.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 34.0, left: 9, right: 5,bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  // Navigator.pushNamed(context, RouteName.categories);
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: Categories(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Image(
                    height: 24,
                    width: 24,
                    image: AssetImage(ImageConstant.boxIcon)),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  // Navigator.pushNamed(context, RouteName.movieDetail);
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: MovieDetail(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
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

              Padding(
                padding: const EdgeInsets.only(top:20,bottom: 12),
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
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
              const MovieList(title: 'Free to Watch'),
              const MovieList(title: 'Feature'),
              const MovieList(title: 'Action'),
              const MovieList(title: 'Adventure'),
              const MovieList(title: 'Animation'),
            ],
          ),
        ),
      )),
    );
  }
}

class MovieList extends StatelessWidget {
  final String title;
  const MovieList({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 15,),
              Text(
                title,
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
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              height: 185,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: ImageConstant().imageList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Image(
                          height: 184,
                          width: 118,
                          image: AssetImage(ImageConstant().imageList[index])),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

