import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_up/sign_up_controller.dart';

class SignUpFormSection extends StatelessWidget {

  final SignUpController signUpController;

  const SignUpFormSection({required this.signUpController, super.key});

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          // name
          TextFormField(
            cursorColor: AppColors.colorBlack,
            controller: signUpController.nameController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                labelText: "Name",
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
                prefixIcon: const Icon(Icons.person, size: 24, color: AppColors.colorGrey)
            ),
          ),
          const Gap(12),
          // email
          TextFormField(
            cursorColor: AppColors.colorBlack,
            controller: signUpController.emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                labelText: "Email",
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
                prefixIcon: const Icon(Icons.alternate_email, size: 24, color: AppColors.colorGrey)
            ),
          ),
          const Gap(12),
          // phone number
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextFormField(
                  cursorColor: AppColors.colorBlack,
                  controller: signUpController.codeController,
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
                  controller: signUpController.phoneNumberController,
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
          // dob
          TextFormField(
            cursorColor: AppColors.colorBlack,
            controller: signUpController.dobController,
            textInputAction: TextInputAction.next,
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
            onTap: () => signUpController.pickDate(context),
            readOnly: true,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                labelText: "Date of Birth",
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
                prefixIcon: const Icon(Icons.calendar_month, size: 24, color: AppColors.colorGrey)
            ),
          ),
          const Gap(12),
          // gender
          TextFormField(
            cursorColor: AppColors.colorBlack,
            controller: signUpController.genderController,
            textInputAction: TextInputAction.next,
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
            onTap: () => signUpController.pickGender(context),
            readOnly: true,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                labelText: "Gender",
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
                prefixIcon: const Icon(Icons.male, size: 24, color: AppColors.colorGrey)
            ),
          ),
          const Gap(12),
          // address
          TextFormField(
            cursorColor: AppColors.colorBlack,
            controller: signUpController.addressController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                labelText: "Address",
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
                prefixIcon: const Icon(Icons.place, size: 24, color: AppColors.colorGrey)
            ),
          ),
          const Gap(12),
          // password
          TextFormField(
            obscureText: true,
            cursorColor: AppColors.colorBlack,
            controller: signUpController.passwordController,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
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
          // confirm password
          TextFormField(
            obscureText: true,
            cursorColor: AppColors.colorBlack,
            controller: signUpController.confirmPasswordController,
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
                labelText: "Confirm Password",
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

          const Gap(24),
          MaterialButton(
            onPressed: () => signUpController.gotoHomeScreen(),
            elevation: 0,
            height: 56, minWidth: MediaQuery.of(context).size.width,
            color: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Sign Up",
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
