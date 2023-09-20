import 'package:binge/utils/component/custom_button.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/component/logo_image.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({Key? key}) : super(key: key);

  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  String selectedOption = ''; // Store the selected option

  final List<String> options = ['Male', 'Female', 'Prefer Not to Say'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LogoImage(),
            Padding(
              padding: const EdgeInsets.only(left: 22, bottom: 30),
              child: Text(
                'Profile Setup',
                style: AppStyles().montserrat(
                  32,
                  AppColor.kTextWhiteColor,
                  FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Text(
                'What is your gender?',
                style: AppStyles().quickSand(
                  16,
                  AppColor.kTextWhiteColor,
                  FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                final option = options[index];
                final isSelected = option == selectedOption;
                final textColor = isSelected ? AppColor.kTextWhiteColor : AppColor.kTextBlackColor;
                final containerColor = isSelected ? AppColor.kPink :AppColor.kWhite;

                return GestureDetector(
                  onTap: () {
                    // Toggle the selected state
                    setState(() {
                      if (isSelected) {
                        selectedOption = ''; // Deselect if already selected
                      } else {
                        selectedOption = option; // Select the option
                      }
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 37, right: 37, top: 15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      option,
                      style: AppStyles().montserrat(17, textColor, FontWeight.w700),
                    ),
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 37, right: 37, top: 25, bottom: 17),
              child: CustomButton(
                onTap: () {
                Navigator.pushNamed(context, RouteName.ageSelection);
                },
                title: 'Next',
                color: AppColor.kPink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



