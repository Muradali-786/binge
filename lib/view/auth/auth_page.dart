import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/view/login/login.dart';
import 'package:binge/view/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: AppColor.kBackgroundColor,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  height: 182,
                  width: 131,
                  image: AssetImage(ImageConstant.bingeLogo)),
            ),
            TabBar(
                // padding: const EdgeInsets.symmetric(horizontal: 4),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColor.kPink,
                controller: _tabController,
                labelColor: AppColor.kTextPinkColor,
                labelStyle: AppStyles().catamaranWithHt(
                    32, AppColor.kTextPinkColor, FontWeight.w700, 1),
                unselectedLabelColor: AppColor.kTextWhiteColor,
                unselectedLabelStyle: AppStyles().catamaranWithHt(
                    32, AppColor.kTextWhiteColor, FontWeight.w400, 1),
                tabs: const [
                  Tab(
                    child: Text('Login'),
                  ),
                  Tab(
                    child: Text('SignUp'),
                  ),
                ]),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [Login(), SignUp()],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
