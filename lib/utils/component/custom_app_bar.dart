import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/view/create_channel/create_channel.dart';
import 'package:binge/view/home/categories/categories.dart';
import 'package:binge/view/upload_movie/upload_movie.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
          PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const Categories(),
          withNavBar: false, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
        }, // Call the callback on tap
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: leadingImage,
        ),
      )
          : null,
        actions: <Widget>[
        if (showIcon) //
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 4),
            child: IconButton(onPressed: (){
             showPopupMenu(context);



            }, icon:const Icon( Icons.menu), color: AppColor.kWhite),
          ),// Render the icon conditionally
   ]);
  }
  Future<void> showPopupMenu(BuildContext context) async {
    final int? selectedValue = await showMenu<int>(
      context: context,

      position: const RelativeRect.fromLTRB(100, 80, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            5.0), // Add border radius// Add border color
      ),


      // Adjust the position as needed
      items: [
        PopupMenuItem<int>(
          value: 1,
          child: Text('Upload Movie/show', style: AppStyles().quickSand(
              16, AppColor.kTextBlackColor, FontWeight.w700),),
        ),

        PopupMenuItem<int>(
          value: 2,
          child: Text('Create a New Channel', style: AppStyles().quickSand(
              16, AppColor.kTextBlackColor, FontWeight.w700),),
        ),
      ],
    );

    if (selectedValue == 1) {
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen:  UploadMovie(),
        withNavBar: false, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );
    }


    else if(selectedValue == 2) {
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: CreateChannel(),
        withNavBar: false, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );
    }
    else {

    }
  }

}
