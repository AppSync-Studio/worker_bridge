import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_in/sign_in_controller.dart';

class SignInFormSection extends StatelessWidget {

  final SignInController signInController;

  const SignInFormSection({required this.signInController, super.key});

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextFormField(
                  cursorColor: AppColors.colorBlack,
                  controller: signInController.codeController,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  style: GoogleFonts.nunito(
                      color: AppColors.colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      labelText: "Code",
                      labelStyle: GoogleFonts.nunito(
                          color: AppColors.colorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)
                      )
                  ),
                ),
              ),
              const Gap(8),
              Expanded(
                flex: 3,
                child: TextFormField(
                  cursorColor: AppColors.colorBlack,
                  controller: signInController.phoneNumberController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  style: GoogleFonts.nunito(
                      color: AppColors.colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      labelText: "Phone Number",
                      labelStyle: GoogleFonts.nunito(
                          color: AppColors.colorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)
                      ),
                      prefixIcon: const Icon(Icons.phone, size: 24, color: AppColors.colorGrey)
                  ),
                ),
              )
            ],
          ),
          const Gap(12),
          TextFormField(
            obscureText: true,
            cursorColor: AppColors.colorBlack,
            controller: signInController.passwordController,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                labelText: "Password",
                labelStyle: GoogleFonts.nunito(
                    color: AppColors.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.colorGrey, width: 1)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)
                ),
                suffixIcon: const Icon(Icons.visibility_off, size: 24, color: AppColors.colorGrey)
            ),
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 24, width: 24,
                    child: Checkbox(
                      value: signInController.isRememberMe, 
                      onChanged: (val) => signInController.rememberMe(val ?? false),
                      checkColor: AppColors.colorWhite,
                      fillColor: signInController.isRememberMe ? MaterialStateProperty.all(AppColors.primaryColor) : MaterialStateProperty.all(Colors.transparent),
                      side: BorderSide(
                        color: signInController.isRememberMe ? AppColors.primaryColor : AppColors.colorGrey,
                        width: 1
                      ),
                    ),
                  ),
                  const Gap(8),
                  Text(
                    "Remember Me",
                    style: GoogleFonts.nunito(
                      color: AppColors.colorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(elevation: 0, backgroundColor: Colors.transparent),
                child: Text(
                  "Forget Password?",
                  style: GoogleFonts.nunito(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
              )
            ],
          ),

          const Gap(24),

          MaterialButton(
            onPressed: () => signInController.gotoHomeScreen(),
            elevation: 0,
            height: 56, minWidth: MediaQuery.of(context).size.width,
            color: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: AppColors.colorWhite,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ),
    );
  }
}
