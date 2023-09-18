import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final double preferredHeight;
  final TextStyle? textStyle;
  final bool automaticallyImplyLeading;
  final bool showIcon; // Add this variable to control icon visibility

  const CustomAppBar({
    Key? key,
    required this.titleText,
    required this.preferredHeight,
    this.textStyle,
    this.automaticallyImplyLeading = false,
    this.showIcon = false, // Initialize the variable with false
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kTransparent,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: PreferredSize(
        preferredSize: Size.fromHeight(preferredHeight),
        child: Center(
          child: Text(
            titleText,
            style: textStyle ??
                AppStyles().quicksandWithHt(24, AppColor.kTextWhiteColor, FontWeight.w700, 3.5),
          ),
        ),
      ),
      actions: <Widget>[
        if (showIcon) // Render the icon conditionally
          const Padding(
            padding: EdgeInsets.only(right: 30, top: 10),
            child: Icon(Icons.menu, color: AppColor.kWhite),
          ),
      ],
    );
  }
}
