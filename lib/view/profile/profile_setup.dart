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
  String selectedGender = '';

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
                style: AppStyles().quicksand(
                  16,
                  AppColor.kTextWhiteColor,
                  FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20),
            GenderSelection(
              title: 'Male',
              isSelected: selectedGender == 'Male',
              onSelect: () {
                setState(() {
                  if (selectedGender == 'Male') {
                    selectedGender = ''; // Deselect if already selected
                  } else {
                    selectedGender = 'Male';
                  }
                });
              },
            ),
            GenderSelection(
              title: 'Female',
              isSelected: selectedGender == 'Female',
              onSelect: () {
                setState(() {
                  if (selectedGender == 'Female') {
                    selectedGender = ''; // Deselect if already selected
                  } else {
                    selectedGender = 'Female';
                  }
                });
              },
            ),
            GenderSelection(
              title: 'Prefer Not to Say',
              isSelected: selectedGender == 'Prefer Not to Say',
              onSelect: () {
                setState(() {
                  if (selectedGender == 'Prefer Not to Say') {
                    selectedGender = ''; // Deselect if already selected
                  } else {
                    selectedGender = 'Prefer Not to Say';
                  }
                });
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

class GenderSelection extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onSelect;

  const GenderSelection({
    required this.title,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        margin: const EdgeInsets.only(left: 37, right: 37, top: 15),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.kPink : AppColor.kWhite,
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 17,
            color: isSelected ? AppColor.kTextWhiteColor : AppColor.kTextBlackColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
