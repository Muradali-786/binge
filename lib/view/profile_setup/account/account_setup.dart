import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/component/custom_button.dart';
import 'package:binge/utils/component/custom_text_field.dart';
import 'package:binge/utils/component/input_text_field.dart';
import 'package:binge/utils/component/logo_image.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/utils/utils.dart';
import 'package:flutter/material.dart';

class AccountSetup extends StatefulWidget {
  const AccountSetup({super.key});

  @override
  State<AccountSetup> createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  FocusNode usernameFocus = FocusNode();
  TextEditingController firstNameController = TextEditingController();
  FocusNode firstNameFocus = FocusNode();
  TextEditingController lastNameController = TextEditingController();
  FocusNode lastNameFocus = FocusNode();
  TextEditingController subController = TextEditingController();
  FocusNode subFocus = FocusNode();
  @override
  void dispose() {
    // Dispose the controllers
    usernameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    subController.dispose();

    // Dispose the focus nodes
    usernameFocus.dispose();
    firstNameFocus.dispose();
    lastNameFocus.dispose();
    subFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogoImage(),
                Center(
                  child: Text(
                    'Set up your account',
                    style: AppStyles().poppins(
                      24,
                      AppColor.kTextWhiteColor,
                      FontWeight.w700,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                    child: Padding(
                  padding: const EdgeInsets.only( top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: AppStyles().nunitoSans(
                            14, AppColor.kTextWhiteColor, FontWeight.w600),
                      ),
                      InputTextField(
                          myController: usernameController,
                          focusNode: usernameFocus,
                          onFieldSubmittedValue: (val) {
                            Utils.onFocusChange(
                                context, usernameFocus, firstNameFocus);
                          },
                          hint: 'username',
                          hintStyle: AppStyles().nunitoSans(
                              14, AppColor.kTextWhiteColor, FontWeight.w400),
                          onValidator: (val) {},
                          keyBoardType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        'First Name',
                        style: AppStyles().nunitoSans(
                            14, AppColor.kTextWhiteColor, FontWeight.w600),
                      ),
                      InputTextField(
                          myController: firstNameController,
                          focusNode: firstNameFocus,
                          onFieldSubmittedValue: (val) {
                            Utils.onFocusChange(
                                context, firstNameFocus, lastNameFocus);
                          },
                          hint: 'First Name',
                          hintStyle: AppStyles().nunitoSans(
                              14, AppColor.kTextWhiteColor, FontWeight.w400),
                          onValidator: (val) {},
                          keyBoardType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Last Name',
                        style: AppStyles().nunitoSans(
                            14, AppColor.kTextWhiteColor, FontWeight.w600),
                      ),
                      InputTextField(
                          myController: lastNameController,
                          focusNode: lastNameFocus,
                          onFieldSubmittedValue: (val) {
                            Utils.onFocusChange(
                                context, lastNameFocus, subFocus);
                          },
                          hint: 'Last Name',
                          hintStyle: AppStyles().nunitoSans(
                              14, AppColor.kTextWhiteColor, FontWeight.w400),
                          onValidator: (val) {},
                          keyBoardType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Subscription',
                        style: AppStyles().nunitoSans(
                            14, AppColor.kTextWhiteColor, FontWeight.w600),
                      ),
                      CustomTextField(
                          controller: subController,
                          focusNode: subFocus,
                          maxLines: 4,
                          hint: 'Please choose your Plan and continue to next step where you can enter your payment information',
                          hintStyle: AppStyles().nunitoSans(
                              14, AppColor.kTextWhiteColor, FontWeight.w400)),
                      const SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                )),
                Text(
                  'Subscription Plan',
                  style: AppStyles().nunitoSans(
                      14, AppColor.kTextWhiteColor, FontWeight.w600),
                ),
                Container(
                  height: 56,
                  width: double.infinity,
                  margin:const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.kBorderWhiteColor,
                    ),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Binge Network (\$5.99 Monthly)',
                        style: AppStyles().nunitoSans(
                            14, AppColor.kTextWhiteColor, FontWeight.w700),
                      ),
                     Container(
                       height: 30,
                       width: 30,
                       margin: const EdgeInsets.only(left: 12),
                       decoration: BoxDecoration(
                        color:AppColor.kWhite,
                           borderRadius: BorderRadius.circular(8)
                       ),

                       child: const Center(child: Icon(Icons.arrow_drop_down,color: AppColor.kBlack,),),
                     )

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 18,bottom: 30),
                  child: CustomButton(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.bottomNav);

                      }, title: 'Sign Up', color: AppColor.kPink),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
