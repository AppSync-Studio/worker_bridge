import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
}