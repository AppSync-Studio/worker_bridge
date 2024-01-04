import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_in/sign_in_controller.dart';

class SignInBottomNav extends StatelessWidget {

  final SignInController signInController;

  const SignInBottomNav({required this.signInController, super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
      alignment: Alignment.center,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: AppColors.colorBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
          ),
          const Gap(8),
          GestureDetector(
            onTap: () => signInController.gotoSignUpScreen(),
            child: Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }
}
