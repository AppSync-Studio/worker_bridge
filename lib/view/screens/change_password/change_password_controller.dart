import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class ChangePasswordController extends GetxController{

  ChangePasswordController();

  final TextEditingController currentPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void updatePassword(){

    Fluttertoast.showToast(
      msg: "Password Updated Successfully",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.primaryColor,
      textColor: AppColors.colorWhite,
      fontSize: 16
    );
  }
}