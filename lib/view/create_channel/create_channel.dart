// import 'package:binge/constant/app_style/app_color.dart';
// import 'package:binge/constant/app_style/app_style.dart';
// import 'package:binge/utils/component/custom_app_bar.dart';
// import 'package:binge/utils/component/custom_button.dart';
// import 'package:binge/utils/component/custom_text_field.dart';
// import 'package:binge/utils/component/input_text_field.dart';
// import 'package:binge/utils/utils.dart';
// import 'package:flutter/material.dart';
//
// class CreateChannel extends StatefulWidget {
//   const CreateChannel({super.key});
//
//   @override
//   State<CreateChannel> createState() => _CreateChannelState();
// }
//
// class _CreateChannelState extends State<CreateChannel> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   FocusNode nameFocus = FocusNode();
//   TextEditingController emailController = TextEditingController();
//   FocusNode emailFocus = FocusNode();
//   TextEditingController desController = TextEditingController();
//   FocusNode desFocus = FocusNode();
//   TextEditingController gamingController = TextEditingController();
//   FocusNode gamingFocus = FocusNode();
//   TextEditingController locationController = TextEditingController();
//   FocusNode locationFocus = FocusNode();
//   TextEditingController ownershipController = TextEditingController();
//   FocusNode ownershipFocus = FocusNode();
//   @override
//   void dispose() {
//     // Dispose the controllers
//     nameController.dispose();
//     emailController.dispose();
//     desController.dispose();
//     gamingController.dispose();
//     locationController.dispose();
//     ownershipController.dispose();
//
//     // Dispose the focus nodes
//     nameFocus.dispose();
//     emailFocus.dispose();
//     desFocus.dispose();
//     gamingFocus.dispose();
//     locationFocus.dispose();
//     ownershipFocus.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.kBackgroundColor80,
//       appBar: const CustomAppBar(titleText: 'Create a New Channel', preferredHeight: 56),
//       body: SafeArea(child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 22,right: 22,top: 20,bottom: 40),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 94,
//                 width: 94,
//                 // margin: const EdgeInsets.only(top: 20),
//                 decoration :  const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColor.kWhite
//                 ),
//                 child:const  Icon(Icons.camera_alt,color: AppColor.kPink,),
//               ),
//               Form(
//                   key: _formKey,
//                   child: Padding(
//                     padding: const EdgeInsets.only( top: 25),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Name',
//                           style: AppStyles().nunitoSans(
//                               14, AppColor.kTextWhiteColor, FontWeight.w600),
//                         ),
//                         InputTextField(
//                             myController: nameController,
//                             focusNode: nameFocus,
//                             onFieldSubmittedValue: (val) {
//                               Utils.onFocusChange(
//                                   context, nameFocus,emailFocus);
//                             },
//                             hint: 'Name',
//                             hintStyle: AppStyles().nunitoSans(
//                                 14, AppColor.kTextWhiteColor, FontWeight.w400),
//                             onValidator: (val) {},
//                             keyBoardType: TextInputType.emailAddress),
//                         const SizedBox(
//                           height: 17,
//                         ),
//                         Text(
//                           'Email',
//                           style: AppStyles().nunitoSans(
//                               14, AppColor.kTextWhiteColor, FontWeight.w600),
//                         ),
//                         InputTextField(
//                             myController: emailController,
//                             focusNode: emailFocus,
//                             onFieldSubmittedValue: (val) {
//                               Utils.onFocusChange(
//                                   context, emailFocus, desFocus);
//                             },
//                             hint: 'Email',
//                             hintStyle: AppStyles().nunitoSans(
//                                 14, AppColor.kTextWhiteColor, FontWeight.w400),
//                             onValidator: (val) {},
//                             keyBoardType: TextInputType.emailAddress),
//                         const SizedBox(
//                           height: 17,
//                         ),
//                         Text(
//                           'Description',
//                           style: AppStyles().nunitoSans(
//                               14, AppColor.kTextWhiteColor, FontWeight.w600),
//                         ),
//                         CustomTextField(
//                             controller: desController,
//                             focusNode: desFocus,
//                             maxLines: 5,
//                             hint: 'Description',
//                             hintStyle: AppStyles().nunitoSans(
//                                 14, AppColor.kTextWhiteColor, FontWeight.w400),
//
//                         ),
//                         const SizedBox(
//                           height: 17,
//                         ),
//                         Text(
//                           'Genre',
//                           style: AppStyles().nunitoSans(
//                               14, AppColor.kTextWhiteColor, FontWeight.w600),
//                         ),
//                         InputTextField(
//                             myController: gamingController,
//                             focusNode: gamingFocus,
//                             onFieldSubmittedValue: (val) {
//                               Utils.onFocusChange(
//                                   context, gamingFocus, locationFocus);
//                             },
//                             hint: 'Gaming',
//                             hintStyle: AppStyles().nunitoSans(
//                                 14, AppColor.kTextWhiteColor, FontWeight.w400),
//                             onValidator: (val) {},
//                             keyBoardType: TextInputType.emailAddress),
//                         const SizedBox(
//                           height: 17,
//                         ),
//                         Text(
//                           'Location',
//                           style: AppStyles().nunitoSans(
//                               14, AppColor.kTextWhiteColor, FontWeight.w600),
//                         ),
//                         InputTextField(
//                             myController: locationController,
//                             focusNode: locationFocus,
//                             onFieldSubmittedValue: (val) {
//                               Utils.onFocusChange(
//                                   context, locationFocus, ownershipFocus);
//                             },
//                             hint: 'Location',
//                             hintStyle: AppStyles().nunitoSans(
//                                 14, AppColor.kTextWhiteColor, FontWeight.w400),
//                             onValidator: (val) {},
//                             keyBoardType: TextInputType.emailAddress),
//                         const SizedBox(
//                           height: 17,
//                         ),
//                         Text(
//                           'Proof of Ownership',
//                           style: AppStyles().nunitoSans(
//                               14, AppColor.kTextWhiteColor, FontWeight.w600),
//                         ),
//                         InputTextField(
//                             myController: ownershipController,
//                             focusNode: ownershipFocus,
//                             onFieldSubmittedValue: (val) {
//
//                             },
//                             hint: 'File',
//                             hintStyle: AppStyles().nunitoSans(
//                                 14, AppColor.kTextWhiteColor, FontWeight.w400),
//                             onValidator: (val) {},
//                             keyBoardType: TextInputType.emailAddress),
//                         const SizedBox(
//                           height: 30,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 12),
//                           child: CustomButton(onTap: (){}, title: 'Create Channel', color: AppColor.kPink),
//                         )
//                       ],
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }
