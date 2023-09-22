import 'package:binge/view/channel/channels.dart';
import 'package:binge/view/channel/my_channel.dart';
import 'package:binge/view/movies/movies.dart';
import 'package:binge/view/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../constant/images/image_constant.dart';
import '../home.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      Home(),
      Movies(),// Replace with your home screen widget
      Channels(),
      MyChannel(),// Replace with your chats screen widget
      Setting(), // Replace with your add screen widget
      ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      _buildNavBarItem(ImageConstant.home, ImageConstant.activehome,  0),
      _buildNavBarItem(ImageConstant.movieIcon, ImageConstant.activemovies, 1),
      _buildNavBarItem(ImageConstant.channelsIcon, ImageConstant.activechannel, 2),
      _buildNavBarItem(ImageConstant.mychannelsIcon, ImageConstant.activecinema, 3),
      _buildNavBarItem(ImageConstant.settingIcon, ImageConstant.settingIcon,  4),
    ];
  }

  PersistentBottomNavBarItem _buildNavBarItem(
      String iconAsset, String activeIconAsset,  int index) {
    return PersistentBottomNavBarItem(
      icon: Stack(
        children: [
          Image.asset(activeIconAsset), // Load the icon from assets

        ],
      ),
      activeColorPrimary: Colors.white,
      inactiveIcon: Image.asset(iconAsset), // Load the active icon from assets
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItems(),
      backgroundColor: Colors.black,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      controller: controller,
      navBarStyle: NavBarStyle.style12,
    );
  }
}
