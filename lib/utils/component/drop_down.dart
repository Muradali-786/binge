
import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  final String buttonText;
  final List<Widget>? menuItems; // List of Row or Column widgets

  DropDownButton({
    required this.buttonText,
    this.menuItems,
  });

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
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
              color: isMenuVisible ? AppColor.kPink : AppColor.kWhite,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.buttonText,
                    style: AppStyles().montserrat(17,  isMenuVisible ? AppColor.kTextWhiteColor : AppColor.kTextBlackColor, FontWeight.w700)

                  ),
                  Image.asset(
                    isMenuVisible
                        ? ImageConstant.ArrowDownIcon
                        : ImageConstant.ArrowStraightIcon,
                    color: isMenuVisible ? AppColor.kWhite : AppColor.kBlack,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: widget.menuItems!,
            ),
          ),
      ],
    );
  }
}










//
// import 'package:flutter/material.dart';
//
// import '../../constant/app_style/app_color.dart';
// import '../../constant/app_style/app_style.dart';
//
// class DropDownButton extends StatefulWidget {
//   final String buttonText;
//   final List<String>? menuItems;
//
//   DropDownButton({
//     required this.buttonText,
//     this.menuItems,
//   });
//
//   @override
//   _DropDownButtonState createState() => _DropDownButtonState();
// }
//
// class _DropDownButtonState extends State<DropDownButton> {
//   bool isMenuVisible = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               isMenuVisible = !isMenuVisible;
//             });
//           },
//           child: Container(
//             height: 50,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: isMenuVisible ? Colors.pink : AppColor.kWhite, // Change color when menu is visible
//               borderRadius: BorderRadius.circular(50),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     widget.buttonText,
//                     style: AppStyles().montserrat(17,
//                         isMenuVisible ? Colors.white : AppColor.kBlack, FontWeight.w700),
//                   ),
//                   Icon(
//                     isMenuVisible
//                         ? Icons.keyboard_arrow_up
//                         : Icons.keyboard_arrow_down,
//                     color: isMenuVisible ? Colors.white : AppColor.kBlack,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         if (isMenuVisible && widget.menuItems != null)
//           Container(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: widget.menuItems!.map((item) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8.0),
//                   child: Text(
//                     item,
//                     style: AppStyles().montserrat(17, AppColor.kWhite, FontWeight.w700),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//       ],
//     );
//   }
// }
