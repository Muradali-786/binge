import 'package:binge/constant/app_style/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final bool obscureText;
  final String hint;
  final int maxLines;
  final TextStyle hintStyle;
  final Color cursorColor;
  final bool enabled;
  final Function(String)? onChanged;

  const CustomTextField({
    Key? key,
    this.cursorColor = AppColor.kWhite,
    required this.controller,
    required this.focusNode,
    required this.hint,
    required this.hintStyle,
    required this.maxLines,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      cursorColor: cursorColor,
      obscureText: obscureText,
      enabled: enabled,
      maxLines: maxLines,
      onTapOutside: (event)=>FocusScope.of(context).unfocus(),

      style: const TextStyle(
        fontSize: 14,
        color: AppColor.kTextWhiteColor,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintStyle,
        filled: true,
        contentPadding: const EdgeInsets.all(13),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.kBorderWhiteColor),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.kBorderWhiteColor),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.kAlertColor),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.kBorderWhiteColor),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
