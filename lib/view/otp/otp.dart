import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_button.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                      height: 182,
                      width: 131,
                      image: AssetImage(ImageConstant.bingeLogo)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text('OTP',
                      style: AppStyles().montserrat(
                          32, AppColor.kTextWhiteColor, FontWeight.w700)),
                ),
               const SizedBox(height: 40),

               Padding(
                 padding: const EdgeInsets.only(left: 22.0),
                 child: RichText(
                    text: const TextSpan(
                      children:  [
                        TextSpan(
                          text: 'Please enter the OTP sent to ',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.kTextWhiteColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '"xyz@gmail\n.com".',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.kTextWhiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
               ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 65,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context,index){
                    return Container(
                      margin: const EdgeInsets.all(5),
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(index.toString(),style: AppStyles().montserrat(17, AppColor.kTextBlackColor,FontWeight.w700),),
                      ),
                    );

                  }),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 37,top: 32,bottom: 17),
                  child: CustomButton(onTap: (){}, title: 'Verify', color: AppColor.kPink),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't get the code?",
                      style: AppStyles().montserrat(
                          16, AppColor.kTextWhiteColor, FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {


                      },
                      child: Text(
                        'Resend',
                        style: AppStyles().montserrat(
                            24, AppColor.kTextPinkColor, FontWeight.w700),
                      ),
                    )
                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
