import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/change_password/change_password_controller.dart';
import 'package:worker_bridge/view/widgets/buttons/custom_button_widget.dart';
import 'package:worker_bridge/view/widgets/text_field/custom_text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {

  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  @override
  void initState() {
    Get.put(ChangePasswordController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false, bottom: false,
      child: GetBuilder<ChangePasswordController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.scaffoldBackgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.colorWhite,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () => Get.back(),
                iconSize: 18,
                alignment: Alignment.center,
                icon: const Icon(Icons.arrow_back, color: AppColors.colorBlack),
              ),
              title: Text("Change Password", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
              titleSpacing: 0,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // top section
                  Image.asset(AppImage.appLogoImage, height: 64, width: 64),
                  const Gap(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create New Password", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600)),
                      const Gap(4),
                      Text(
                        "To protect your account, please use strong password for more security.",
                        style: GoogleFonts.nunito(color: AppColors.colorGrey, fontSize: 12, fontWeight: FontWeight.w400)
                      ),
                    ],
                  ),

                  const Gap(32),

                  // form section
                  Form(
                    child: Column(
                      children: [
                        CustomTextFormField(
                          isPassword: true,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          labelText: "Current Password",
                          textEditingController: controller.currentPasswordController,
                        ),
                        const Gap(12),
                        CustomTextFormField(
                          isPassword: true,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          labelText: "New Password",
                          textEditingController: controller.newPasswordController,
                        ),
                        const Gap(12),
                        CustomTextFormField(
                          isPassword: true,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          labelText: "Confirm Password",
                          textEditingController: controller.confirmPasswordController,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
                color: AppColors.colorWhite,
                child: CustomButtonWidget(onPressed: () => controller.updatePassword(), buttonTitle: "Update password"),
              ),
            ),
          );
        }
      ),
    );
  }
}
