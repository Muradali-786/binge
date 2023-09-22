import 'package:flutter/material.dart';

import '../../constant/app_style/app_color.dart';
import '../../constant/app_style/app_style.dart';


class CustomSettingButton extends StatefulWidget {
  final String buttonText;
  final List<String>? menuItems;

  CustomSettingButton({
    required this.buttonText,
    this.menuItems,
  });

  @override
  _CustomSettingButtonState createState() => _CustomSettingButtonState();
}

class _CustomSettingButtonState extends State<CustomSettingButton> {
  bool isMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isMenuVisible = !isMenuVisible;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.kWhite, // Customize the background color
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      widget.buttonText,
                      style: AppStyles().montserrat(17, AppColor.kBlack, FontWeight.w700)
                  ),
                  Icon(
                    isMenuVisible
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColor.kBlack, // Customize the icon color
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isMenuVisible && widget.menuItems != null)
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.menuItems!.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                      item,
                      style: AppStyles().montserrat(17, AppColor.kWhite, FontWeight.w700)
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}





