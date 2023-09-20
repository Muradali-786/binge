import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WatchMovie extends StatefulWidget {
  const WatchMovie({Key? key}) : super(key: key);

  @override
  _WatchMovieState createState() => _WatchMovieState();
}

class _WatchMovieState extends State<WatchMovie> {
  double _sliderValue = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,//
      DeviceOrientation.landscapeRight,//   for screen lock i landscape mode
    ]);
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        // Reset preferred orientation when navigating back
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        return true; // Allow back navigation
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.theTrench),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 6,
                left: 22,
                child: Text(
                  'The Meg 2: The Trench',
                  style: AppStyles().openSans(
                    24,
                    AppColor.kTextWhiteColor,
                    FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                bottom: 37,
                left: 0,
                right: 0,
                child: SliderTheme(
                  data: const SliderThemeData(
                    thumbColor: Colors.pink, // Set thumb color to pink
                    activeTrackColor: Colors.pink, // Set active track color to pink
                    inactiveTrackColor: Colors.grey, // Set inactive track color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Slider(
                            value: _sliderValue,
                            onChanged: (newValue) {
                              setState(() {
                                _sliderValue = newValue;
                              });
                            },
                          ),
                        ),
                        Text('125:00',style: AppStyles().poppins(20, AppColor.kTextWhiteColor, FontWeight.w400),)
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(children: [  CustomImagePath(image: ImageConstant.playIcon),
                      CustomImagePath(image: ImageConstant.reverseIcon),
                      CustomImagePath(image: ImageConstant.forward3Icon),
                      CustomImagePath(image: ImageConstant.voiceIcon),],),
                      Row(children: [  CustomImagePath(image: ImageConstant.helpIcon),
                        CustomImagePath(image: ImageConstant.forwardIcon),
                        CustomImagePath(image: ImageConstant.pipIcon),
                        CustomImagePath(image: ImageConstant.languageIcon),
                        CustomImagePath(image: ImageConstant.fullScreenIcon),


                      ],)

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );


  }
}


class CustomImagePath extends StatelessWidget {
  final String image;
  const CustomImagePath({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6,right: 6,bottom: 3),
      child: Image(image: AssetImage(image)),
    );
  }
}
