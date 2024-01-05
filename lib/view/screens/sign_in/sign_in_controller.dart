import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/route/app_route.dart';

class SignInController extends GetxController{

  SignInController();

  TextEditingController codeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isRememberMe = false;

  void rememberMe(bool val){
    isRememberMe = val;
    update();
  }

  gotoHomeScreen(){
    Get.offAndToNamed(AppRoute.homeScreen);
  }

  gotoForgetPasswordScreen(){
    Get.offAndToNamed(AppRoute.phoneVerifyScreen);
  }

  gotoSignUpScreen(){
    Get.offAndToNamed(AppRoute.signUpScreen);
  }
}