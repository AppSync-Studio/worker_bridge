import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/route/app_route.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/edit_profile/inner_widget/edit_profile_controller.dart';
import 'package:worker_bridge/view/screens/edit_profile/inner_widget/edit_profile_image_section.dart';
import 'package:worker_bridge/view/widgets/buttons/custom_button_widget.dart';
import 'package:worker_bridge/view/widgets/text_field/custom_text_form_field.dart';

class EditProfileScreen extends StatefulWidget {

  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  @override
  void initState() {
    Get.put(EditProfileController());

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.put(EditProfileController()).initialState();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: GetBuilder<EditProfileController>(
        builder: (controller) => Scaffold(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.colorWhite,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back, color: AppColors.colorBlack),
              iconSize: 18,
              alignment: Alignment.center,
            ),
            titleSpacing: 0,
            title: Text("Edit Profile", textAlign: TextAlign.center, style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              children: [
                // profile image upload section
                EditProfileImageSection(editProfileController: controller),
                const Gap(32),
                Form(
                  key: controller.editProfileFormKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                          labelText: "Username",
                          textEditingController: controller.usernameController,
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          prefixIcon: const Icon(Icons.person, size: 24, color: AppColors.colorGrey)
                      ),
                      const Gap(12),

                      CustomTextFormField(
                        labelText: "Email",
                        textEditingController: controller.emailController,
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: const Icon(Icons.alternate_email, size: 24, color: AppColors.colorGrey),
                      ),
                      const Gap(12),

                      CustomTextFormField(
                        labelText: "Address",
                        textEditingController: controller.addressController,
                        textInputType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.done,
                        prefixIcon: const Icon(Icons.place, size: 24, color: AppColors.colorGrey),
                      )
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
              alignment: Alignment.center,
              child: CustomButtonWidget(
                onPressed: () => controller.updateProfile(),
                buttonTitle: "Update Profile"
              ),
            ),
          ),
        )
      ),
    );
  }
}
