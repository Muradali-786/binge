
import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:binge/utils/component/custom_button.dart';
import 'package:binge/utils/component/drop_down.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/view/setting/profile.dart';
import 'package:flutter/material.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class Setting extends StatefulWidget {

  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
 bool switchValue=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColor.kBackgroundColor80,
      appBar:const CustomAppBar(
        titleText: 'Setting',
        preferredHeight: 56,
        showIcon: true,
      ),
//body of screen starts here
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 13,right: 13,top: 13,bottom: 25),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: Profile(),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("Profile",style: AppStyles().montserrat(17, AppColor.kBlack, FontWeight.w700),),
                          Image(image: AssetImage(ImageConstant.ArrowStraightIcon))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                DropDownButton(
              buttonText: 'Account',
              menuItems: [
                Padding(
                  padding: const EdgeInsets.only(left: 6,top: 15,right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Email',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                          Text('xyz@gmail.com',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Password',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                          Text('***********',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text("Membership",style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w700),),
                      const SizedBox(height: 10,),
                      Text("Deactivate",style: AppStyles().quickSand(16, AppColor.kPink, FontWeight.w700),)


                    ],
                  ),
                )

              ],),
                const SizedBox(height: 24,),
                DropDownButton(buttonText: 'Notification',
                menuItems: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 6,right: 6),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Push Notification',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                            Switch(
                              value: switchValue,
                              onChanged: (value) {
                                setState(() {
                                  switchValue = value;
                                });
                              },
                              activeColor: AppColor.kPink, // Color when the Switch is on
                              inactiveTrackColor: AppColor.kWhite, // Color when the Switch is off
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Email Notification',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                            Switch(
                              value: switchValue,
                              onChanged: (value) {
                                setState(() {
                                  switchValue = value;
                                });
                              },
                              activeColor: AppColor.kPink, // Color when the Switch is on
                              inactiveTrackColor: AppColor.kWhite, // Color when the Switch is off
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('SMS Notification',style: AppStyles().quickSand(16, AppColor.kWhite, FontWeight.w400),),
                            Switch(
                              value: switchValue,
                              onChanged: (value) {
                                setState(() {
                                  switchValue = value;
                                });
                              },
                              activeColor: AppColor.kPink, // Color when the Switch is on
                              inactiveTrackColor: AppColor.kWhite, // Color when the Switch is off
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],),
                const SizedBox(height: 24,),
                DropDownButton(
                    buttonText: 'Language',
                  menuItems: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Text('English',style: AppStyles().montserrat(16, AppColor.kPink,FontWeight.w400 ),)
                                ],),
                              ),
                              const ReuseableRow(title: 'Arabic'),
                              const ReuseableRow(title: 'Chinese'),
                              const ReuseableRow(title: 'Dutch'),
                              const ReuseableRow(title: 'German'),
                              const ReuseableRow(title: 'French'),
                            ],
                          ),
                          const Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReuseableRow(title: 'Italian'),
                              ReuseableRow(title: 'Hindi'),
                              ReuseableRow(title: 'Telgu'),
                              ReuseableRow(title: 'Marathi'),
                              ReuseableRow(title: 'Urdu'),
                              ReuseableRow(title: 'Arabic'),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReuseableRow(title: 'Chinese'),
                              ReuseableRow(title: 'Dutch'),
                              ReuseableRow(title: 'German'),
                              ReuseableRow(title: 'French'),
                              ReuseableRow(title: 'Italian'),
                              ReuseableRow(title: 'Hindi'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24,),
                DropDownButton(buttonText: 'More',
                menuItems: const [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReuseableRow(title: "Term And Conditions"),
                      ReuseableRow(title: "Privacy Policy"),
                      ReuseableRow(title: "Disclaimer"),
                      ],
                  )
                ],),
                const SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: CustomButton(onTap: (){}, title: 'Log Out', color: AppColor.kPink),
                )
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
class ReuseableRow extends StatelessWidget {
  final String title;
  const ReuseableRow({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 10),
      child: Row(
        children: [
          Text(title,style: AppStyles().montserrat(16, AppColor.kWhite, FontWeight.w400),)
        ],
      ),
    );
  }
}







