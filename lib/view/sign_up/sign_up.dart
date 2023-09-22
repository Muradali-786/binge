import 'package:binge/constant/app_style/app_color.dart';
import 'package:binge/constant/app_style/app_style.dart';
import 'package:binge/utils/component/custom_button.dart';
import 'package:binge/utils/component/input_text_field.dart';
import 'package:binge/utils/component/logo_image.dart';
import 'package:binge/utils/route/route_name.dart';
import 'package:binge/utils/utils.dart';
import 'package:binge/view/login/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  TextEditingController passController = TextEditingController();
  FocusNode passFocus = FocusNode();
  TextEditingController confirmPassController = TextEditingController();
  FocusNode confirmPassFocus = FocusNode();

  @override
  void dispose() {
    // Dispose of the controllers and focus nodes when the widget is removed from the widget tree.
    emailController.dispose();
    emailFocus.dispose();
    passController.dispose();
    passFocus.dispose();
    confirmPassController.dispose();
    confirmPassFocus.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColor.kBackgroundColor,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.only( right: 27, left: 27, bottom: 24),
                child: Column(
                  children: [
                    LogoImage(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, RouteName.login);
                              },
                              child: Text('Login',style: AppStyles().catamaran(
                                  32, AppColor.kTextWhiteColor, FontWeight.w400),),
                            ),
                            const SizedBox(
                              width: 30,
                              child: Divider(
                                thickness: 3,
                                color: AppColor.kTransparent,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Sign Up',style: AppStyles().catamaran(
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



                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SignWithGoogle(title: 'Continue with Google', onTap: () {}),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '-------------or Sign in with Email-------------',
                      style: AppStyles()
                          .catamaran(14, AppColor.kTextWhiteColor, FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
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
                              height: 17,
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
                                onFieldSubmittedValue: (val) {
                                  Utils.onFocusChange(context,  passFocus,confirmPassFocus);
                                },
                                hint: 'Password',
                                hintStyle: AppStyles().nunitoSans(
                                    14, AppColor.kTextWhiteColor, FontWeight.w400),
                                onValidator: (val) {},
                                keyBoardType: TextInputType.visiblePassword),
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Confirm Password',
                              style: AppStyles().nunitoSans(
                                  14, AppColor.kTextWhiteColor, FontWeight.w600),
                            ),
                            InputTextField(
                                myController: confirmPassController,
                                focusNode: confirmPassFocus,
                                obsecureText: true,
                                onFieldSubmittedValue: (val) {},
                                hint: 'Confirm Password',
                                hintStyle: AppStyles().nunitoSans(
                                    14, AppColor.kTextWhiteColor, FontWeight.w400),
                                onValidator: (val) {},
                                keyBoardType: TextInputType.visiblePassword),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0,bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    color: AppColor.kWhite,
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
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.check_box,
                                  color: AppColor.kWhite,
                                ),
                                Expanded(
                                  child: Text(
                                    'I agree to recieve marketing communication from society',
                                    style: AppStyles().nunitoSans(
                                        12,
                                        AppColor.kTextWhiteColor,
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: CustomButton(
                          onTap: () {
                           Navigator.pushNamed(context, RouteName.otp);

                          }, title: 'Sign Up', color: AppColor.kPink),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Already Have Account?',
                          style: AppStyles().nunitoSans(
                              w*0.045, AppColor.kTextWhiteColor, FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteName.login);


                          },
                          child: Text(
                            ' Login',
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

