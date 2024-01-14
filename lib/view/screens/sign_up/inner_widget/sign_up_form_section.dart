import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_up/inner_widget/sign_up_bottom_sheet_section.dart';
import 'package:worker_bridge/view/screens/sign_up/sign_up_controller.dart';
import 'package:worker_bridge/view/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:worker_bridge/view/widgets/buttons/custom_button_widget.dart';
import 'package:worker_bridge/view/widgets/text_field/custom_text_form_field.dart';

class SignUpFormSection extends StatelessWidget {

  final SignUpController signUpController;

  const SignUpFormSection({required this.signUpController, super.key});

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          // name
          CustomTextFormField(
            textInputType: TextInputType.name,
            textInputAction: TextInputAction.next,
            textEditingController: signUpController.nameController,
            labelText: "Name",
            prefixIcon: const Icon(Icons.person, size: 24, color: AppColors.colorGrey)
          ),
          const Gap(12),
          // email
          CustomTextFormField(
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            textEditingController: signUpController.emailController,
            labelText: "Email",
            prefixIcon: const Icon(Icons.alternate_email, size: 24, color: AppColors.colorGrey)
          ),
          const Gap(12),
          // phone number
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomTextFormField(
                  readOnly: true,
                  labelText: "Code",
                  textEditingController: signUpController.codeController,
                  onTap: () => CustomBottomSheet(isDialCode: true, child: SignUpBottomSheetSection(signUpController: signUpController)).customBottomSheet(context),
                )
              ),
              const Gap(8),
              Expanded(
                flex: 3,
                child: CustomTextFormField(
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  textEditingController: signUpController.phoneNumberController,
                  labelText: "Phone Number",
                  prefixIcon: const Icon(Icons.phone, size: 24, color: AppColors.colorGrey)
                ),
              )
            ],
          ),
          const Gap(12),
          // dob
          CustomTextFormField(
            readOnly: true,
            textEditingController: signUpController.dobController,
            labelText: "Date of Birth",
            prefixIcon: const Icon(Icons.calendar_month, size: 24, color: AppColors.colorGrey),
            onTap: () => signUpController.pickDate(context),
          ),
          const Gap(12),
          // gender
          CustomTextFormField(
            readOnly: true,
            textEditingController: signUpController.genderController,
            labelText: "Gender",
            prefixIcon: const Icon(Icons.male, size: 24, color: AppColors.colorGrey),
            onTap: () => signUpController.pickGender(context),
          ),
          const Gap(12),
          // address
          CustomTextFormField(
            textInputType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            textEditingController: signUpController.addressController,
            labelText: "Address",
            prefixIcon: const Icon(Icons.place, size: 24, color: AppColors.colorGrey)
          ),
          const Gap(12),
          // password
          CustomTextFormField(
            isPassword: true,
            textEditingController: signUpController.passwordController,
            textInputType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            labelText: "Password"
          ),
          const Gap(12),
          // confirm password
          CustomTextFormField(
            isPassword: true,
            textEditingController: signUpController.confirmPasswordController,
            textInputType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            labelText: "Confirm Password"
          ),

          const Gap(24),
          CustomButtonWidget(
            onPressed: () => signUpController.gotoHomeScreen(),
            buttonTitle: "Sign Up"
          )
        ],
      ),
    );
  }
}
