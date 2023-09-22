import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlack80,
      appBar: const CustomAppBar(
          titleText: 'Profile',
          preferredHeight: 56,
          showIcon: true,),

      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 32, right: 32),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 307,
                height: 307,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Light grey background color
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(ImageConstant.ellipseImg),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                'Janie J. Jester',
                style:
                    AppStyles().poppins(25, AppColor.kWhite, FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Text('Gender ',
                    style: AppStyles()
                        .poppins(16, AppColor.kWhite, FontWeight.w700)),
                const SizedBox(width: 20),
                Text('Female', // Replace with the actual gender value
                    style: AppStyles()
                        .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                const SizedBox(
                    width: 20), // Add some spacing between the text elements
                Text('Age',
                    style: AppStyles()
                        .poppins(16, AppColor.kWhite, FontWeight.w700)),
                const SizedBox(width: 20),
                Text('18', // Replace with the actual gender value
                    style: AppStyles()
                        .quickSand(16, AppColor.kWhite, FontWeight.w400)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Email: ',
                      style: AppStyles()
                          .poppins(16, AppColor.kWhite, FontWeight.w700)),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 3,
                  child: Text(
                      'user@example.com', // Replace with the actual email address
                      style: AppStyles()
                          .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Phone# ',
                      style: AppStyles()
                          .poppins(16, AppColor.kWhite, FontWeight.w700)),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 3,
                  child: Text(
                      '123 123 123', // Replace with the actual email address
                      style: AppStyles()
                          .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Address ',
                      style: AppStyles()
                          .poppins(16, AppColor.kWhite, FontWeight.w700)),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 3,
                  child: Text(
                      'College doraha', // Replace with the actual email address
                      style: AppStyles()
                          .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Address ',
                      style: AppStyles()
                          .poppins(16, AppColor.kWhite, FontWeight.w700)),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 3,
                  child: Text(
                      'College doraha', // Replace with the actual email address
                      style: AppStyles()
                          .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Lorem ',
                      style: AppStyles()
                          .poppins(16, AppColor.kWhite, FontWeight.w700)),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 3,
                  child: Text(
                      'Hello this is demo', // Replace with the actual email address
                      style: AppStyles()
                          .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Lorem ',
                      style: AppStyles()
                          .poppins(16, AppColor.kWhite, FontWeight.w700)),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 3,
                  child: Text(
                      'Hello this is demo', // Replace with the actual email address
                      style: AppStyles()
                          .quickSand(16, AppColor.kWhite, FontWeight.w400)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
