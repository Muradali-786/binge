import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String title;
  final Color color, txtColor, borderColor;
  final VoidCallback onTap;
  const CustomButton(
      {super.key,
        required this.onTap,
        required this.title,
        required this.color,
        this.txtColor =AppColor.kTextWhiteColor,
        this.borderColor = AppColor.kPink,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            title,
            style: AppStyles().nunitoSans(18,
                AppColor.kTextWhiteColor, FontWeight.w800),

          ),
        ),
      ),
    );
  }
}