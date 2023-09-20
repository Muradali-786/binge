import 'package:binge/utils/component/custom_button.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:flutter/material.dart';

import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/component/logo_image.dart';

class AgeSelection extends StatefulWidget {
  const AgeSelection({Key? key}) : super(key: key);

  @override
  _AgeSelectionState createState() => _AgeSelectionState();
}

class _AgeSelectionState extends State<AgeSelection> {
  int selectedGenderIndex = -1; // Initialize with -1 (no selection)

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
                'What is your age?',
                style: AppStyles().quickSand(
                  16,
                  AppColor.kTextWhiteColor,
                  FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 100, // Change this to the desired number of items
                itemBuilder: (BuildContext context, int index) {
                  return AgePicker(
                    title: '$index',
                    isSelected: selectedGenderIndex == index,
                    onSelect: () {
                      setState(() {
                        if (selectedGenderIndex == index) {
                          selectedGenderIndex = -1; // Deselect if already selected
                        } else {
                          selectedGenderIndex = index;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 37, right: 37, top: 22, bottom: 17),
              child: CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.accountSetup);
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

class AgePicker extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onSelect;

  AgePicker({
    required this.title,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        margin: const EdgeInsets.only(left: 37, right: 37, top: 16),
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
