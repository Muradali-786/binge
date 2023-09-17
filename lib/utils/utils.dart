import 'package:flutter/material.dart';

class Utils{

  static void onFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  // static toastMessage(String message){
  //   Fluttertoast.showToast(
  //       msg: message,
  //       backgroundColor: AppColors.kBlack,
  //       textColor: AppColors.kWhite,
  //       fontSize: 16
  //
  //
  //   );
  //
  //
  // }



}