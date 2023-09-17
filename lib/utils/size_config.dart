import 'package:flutter/widgets.dart';

class SizeConfig{

  static double screenWidth(BuildContext context) =>
  MediaQuery.of(context).size.width;

  static bool isMobile(BuildContext context) =>//beake piont
  screenWidth(context) < 768;

  static bool isTablet(BuildContext context) =>
  screenWidth(context) >= 768 && screenWidth(context) < 1024;

  static bool isDesktop(BuildContext context) =>
  screenWidth(context) >= 1024;

}