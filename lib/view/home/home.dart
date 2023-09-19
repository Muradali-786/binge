import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/route/route_name.dart';
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
      backgroundColor: AppColor.kBackgroundColor80,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 34.0, left: 22, right: 5,bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  height: 24,
                  width: 24,
                  image: AssetImage(ImageConstant.boxIcon)),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RouteName.movieDetail);
                },
                child: Image(
                    height: 180,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(ImageConstant.meg2Image)),
              ),
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
      padding: const EdgeInsets.only(top: 15.0,right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
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
                          width: 116,
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
