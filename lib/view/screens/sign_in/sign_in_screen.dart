import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_in/inner_widget/sign_in_form_section.dart';
import 'package:worker_bridge/view/screens/sign_in/inner_widget/sign_in_top_section.dart';
import 'package:worker_bridge/view/screens/sign_in/sign_in_controller.dart';

class SignInScreen extends StatefulWidget {

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  void initState() {
    Get.put(SignInController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: GetBuilder<SignInController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: const EdgeInsetsDirectional.only(top: 76, start: 24, bottom: 20, end: 24),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // top section
                  const SignInTopSection(),
                  const Gap(64),

                  // form section
                  SignInFormSection(signInController: controller)
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}

