import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_up/inner_widget/sign_up_form_section.dart';
import 'package:worker_bridge/view/screens/sign_up/inner_widget/sign_up_top_section.dart';
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
            appBar: AppBar(
              backgroundColor: AppColors.colorWhite,
              elevation: 0,
              automaticallyImplyLeading: false,
              leading: IconButton(
                alignment: Alignment.center,
                iconSize: 18,
                onPressed: () => Get.offAndToNamed(AppRoute.signInScreen),
                icon: const Icon(Icons.arrow_back)
              ),
              title: Text("Sign Up", textAlign: TextAlign.center, style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
              titleSpacing: 0,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // top section
                  const SignUpTopSection(),
                  const Gap(32),

                  // form section
                  SignUpFormSection(signUpController: controller)
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
