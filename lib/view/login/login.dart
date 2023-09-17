import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/constant/images/image_constant.dart';
import 'package:binge/utils/component/custom_button.dart';
import 'package:binge/utils/component/input_text_field.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/utils/utils.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  TextEditingController passController = TextEditingController();
  FocusNode passFocus = FocusNode();
  @override
  void dispose() {
    // Dispose of the controllers and focus nodes when the widget is removed from the widget tree.
    emailController.dispose();
    emailFocus.dispose();
    passController.dispose();
    passFocus.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.kBackgroundColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only( right: 27, left: 27, bottom: 16),
            child: Column(
              children: [
                Center(
                  child: Image(
                      height: 182,
                      width: 131,
                      image: AssetImage(ImageConstant.bingeLogo)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Login',style: AppStyles().catamaran(
                            32, AppColor.kTextPinkColor, FontWeight.w700)),
                        const SizedBox(
                          width: 30,
                          child: Divider(
                            thickness: 3,
                            color: AppColor.kPink,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sign Up',style: AppStyles().catamaran(
                            32, AppColor.kTextWhiteColor, FontWeight.w400),),
                        const SizedBox(
                          width: 30,
                          child: Divider(
                            thickness: 3,
                            color: AppColor.kTransparent,
                          ),
                        )
                      ],
                    ),



                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                SignWithGoogle(title: 'Continue with Google', onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '-------------or Sign in with Email-------------',
                  style: AppStyles()
                      .catamaran(14, AppColor.kTextWhiteColor, FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
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
                            myController: emailController,
                            focusNode: emailFocus,
                            onFieldSubmittedValue: (val) {

                              Utils.onFocusChange(context, emailFocus, passFocus);
                            },
                            hint: 'mail@abc.com',
                            hintStyle: AppStyles().nunitoSans(
                                14, AppColor.kTextWhiteColor, FontWeight.w400),
                            onValidator: (val) {},
                            keyBoardType: TextInputType.emailAddress),
                        const SizedBox(
                          height: 27,
                        ),
                        Text(
                          'Password',
                          style: AppStyles().nunitoSans(
                              14, AppColor.kTextWhiteColor, FontWeight.w600),
                        ),
                        InputTextField(
                            myController: passController,
                            focusNode: passFocus,
                            obsecureText: true,
                            onFieldSubmittedValue: (val) {},
                            hint: 'Password',
                            hintStyle: AppStyles().nunitoSans(
                                14, AppColor.kTextWhiteColor, FontWeight.w400),
                            onValidator: (val) {},
                            keyBoardType: TextInputType.visiblePassword),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.check_box,
                                  color: AppColor.kPink,
                                ),
                                Text(
                                  'Remember Me',
                                  style: AppStyles().nunitoSans(
                                      12,
                                      AppColor.kTextWhiteColor,
                                      FontWeight.w400),
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: AppStyles().nunitoSans(12,
                                      AppColor.kTextPinkColor, FontWeight.w600),
                                ))
                          ],
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: CustomButton(
                      onTap: () {}, title: 'Login', color: AppColor.kPink),
                ),
                Row(
                  children: [
                    Text(
                      'Not Register Yet?',
                      style: AppStyles().nunitoSans(
                          16, AppColor.kTextWhiteColor, FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.signUp);

                      },
                      child: Text(
                        ' Create an account',
                        style: AppStyles().nunitoSans(
                            18, AppColor.kTextPinkColor, FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }
}

class SignWithGoogle extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SignWithGoogle({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColor.kBorderWhiteColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 25,
                width: 25,
                image: AssetImage(ImageConstant.googleIcon)),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppStyles()
                  .nunitoSans(14, AppColor.kTextWhiteColor, FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
