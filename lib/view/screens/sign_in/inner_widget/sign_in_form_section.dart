import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/sign_in/inner_widget/sign_in_bottom_sheet_section.dart';
import 'package:worker_bridge/view/screens/sign_in/sign_in_controller.dart';
import 'package:worker_bridge/view/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:worker_bridge/view/widgets/buttons/custom_button_widget.dart';
import 'package:worker_bridge/view/widgets/text_field/custom_text_form_field.dart';

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
                child: CustomTextFormField(
                  readOnly: true,
                  labelText: "Code",
                  textEditingController: signInController.codeController,
                  onTap: () => CustomBottomSheet(isDialCode: true, child: SignInBottomSheetSection(signInController: signInController)).customBottomSheet(context),
                )
              ),
              const Gap(8),
              Expanded(
                flex: 3,
                child: CustomTextFormField(
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  textEditingController: signInController.phoneNumberController,
                  labelText: "Phone Number",
                  prefixIcon: const Icon(Icons.phone, size: 24, color: AppColors.colorGrey)
                ),
              )
            ],
          ),
          const Gap(12),
          CustomTextFormField(
            isPassword: true,
            textEditingController: signInController.passwordController,
            textInputType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            labelText: "Password"
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
          CustomButtonWidget(
            onPressed: () => signInController.gotoHomeScreen(),
            buttonTitle: "Sign In"
          ),
        ],
      ),
    );
  }
}
