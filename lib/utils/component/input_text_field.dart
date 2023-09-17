import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmittedValue;
  final FormFieldValidator onValidator;
  final TextInputType keyBoardType;
  final bool obsecureText;
  final String hint;
  final TextStyle hintStyle;
  final Color cursorColor;
  final bool enable, autoFocus;
  final Function(String)? onChanged;
  final EdgeInsets? contentPadding;
  const InputTextField({
    Key? key,
    this.cursorColor = AppColor.kWhite,
    required this.myController,
    required this.focusNode,
    required this.onFieldSubmittedValue,
    required this.hint,
    required this.hintStyle,
    required this.onValidator,
    required this.keyBoardType,
    this.contentPadding,
    this.obsecureText = false,
    this.enable = true,
    this.autoFocus = true,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: TextFormField(
        controller: myController,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmittedValue,
        validator: onValidator,
        keyboardType: keyBoardType,
        cursorColor: cursorColor,
        enabled: enable,
        onTapOutside: (event)=>FocusScope.of(context).unfocus(),
        style: AppStyles()
            .nunitoSans(14, AppColor.kTextWhiteColor, FontWeight.w400),
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintStyle,
            filled: true,
            contentPadding: contentPadding ?? const EdgeInsets.all(13),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.kBorderWhiteColor),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.kBorderWhiteColor),
                borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.kAlertColor),
                borderRadius: BorderRadius.circular(5)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.kBorderWhiteColor),
                borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
