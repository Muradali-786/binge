import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final double preferredHeight;
  final TextStyle? textStyle;
  final bool automaticallyImplyLeading;
  final bool showIcon; // Add this variable to control icon visibility
  final Image? leadingImage; // Add this variable for the leading icon

  const CustomAppBar({
    Key? key,
    required this.titleText,
    required this.preferredHeight,
    this.textStyle,
    this.automaticallyImplyLeading = false,
    this.showIcon = false, // Initialize the variable with false
    this.leadingImage, // Initialize the leading image as null
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
                AppStyles().quickSandWithHt(24, AppColor.kTextWhiteColor, FontWeight.w700, 3.5),
          ),
        ),
      ),
      leading: leadingImage != null
          ? InkWell(
        onTap: (){
          Navigator.pushNamed(context, RouteName.categories);
        }, // Call the callback on tap
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: leadingImage,
        ),
      )
          : null,
      actions: <Widget>[
        if (showIcon) // Render the icon conditionally
          const Padding(
            padding: EdgeInsets.only(right: 25, top: 4),
            child: Icon(Icons.menu, color: AppColor.kWhite),
          ),
      ],
    );
  }
}
