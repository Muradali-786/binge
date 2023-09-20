import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categoriesList = [
    'Anime',
    'Animation',
    'Action',
    'Adventure',
    'Horror',
    'Sci-Fi',
    'Anime',
    'Animation',
    'Action',
    'Adventure'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor80,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0,right: 12, top: 13,bottom: 27),
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 3,
                    left: 1,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: AppColor.kWhite,
                        )),
                  ),
                  Center(
                    child: Image(
                        height: 102,
                        width: 142,
                        image: AssetImage(ImageConstant.binge)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 26),
                child: Center(
                    child: Text(
                  'Categories',
                  style: AppStyles()
                      .quickSand(24, AppColor.kTextWhiteColor, FontWeight.w700),
                )),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: categoriesList.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  childAspectRatio: 165 / 134,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 134,
                    width: 165,
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: AppColor.kBackgroundColor80,
                      gradient: AppColor.blackWhiteGradient,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                            child: Image(
                                height: 80,
                                width: 82,
                                image: AssetImage(ImageConstant()
                                    .categoriesMoviesList[index]))),
                        Text(
                          categoriesList[index],
                          style: AppStyles().quickSand(
                              16, AppColor.kTextWhiteColor, FontWeight.w700),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
