import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_up/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  void initState() {
    Get.put(SignUpController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: GetBuilder<SignUpController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldBackgroundColor,
            appBar: AppBar(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 24),
              child: Column(),
            ),
          );
        }
      ),
    );
  }
}
