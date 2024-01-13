import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/profile/inner_widget/profile_content_widget.dart';
import 'package:worker_bridge/view/screens/profile/inner_widget/profile_controller.dart';
import 'package:worker_bridge/view/screens/profile/inner_widget/profile_top_section.dart';
import 'package:worker_bridge/view/widgets/divider/custom_divider.dart';

class ProfileScreen extends StatefulWidget {

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    Get.put(ProfileController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: GetBuilder<ProfileController>(
        builder: (controller) {

          return Scaffold(
            backgroundColor: AppColors.scaffoldBackgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.colorWhite,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back, color: AppColors.colorBlack),
                iconSize: 18,
                alignment: Alignment.center,
              ),
              titleSpacing: 0,
              title: Text("Profile", textAlign: TextAlign.center, style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // profile top section
                  ProfileTopSection(profileController: controller),
                  const Gap(16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 16),
                    decoration: BoxDecoration(
                      color: AppColors.colorTransparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.colorGrey.withOpacity(0.3), width: 1)
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // username
                        ProfileContentWidget(
                          iconData: Icons.person,
                          contentTitle: "Username",
                          content: "Mirza Mahmud Hossan",
                        ),
                        CustomDivider(),

                        // email
                        ProfileContentWidget(
                          iconData: Icons.email_rounded,
                          contentTitle: "Email",
                          content: "mirza.dev25@gmail.com",
                        ),
                        CustomDivider(),

                        // phone number
                        ProfileContentWidget(
                          iconData: Icons.phone,
                          contentTitle: "Phone Number",
                          content: "+8801846235375",
                        ),
                        CustomDivider(),

                        // date of birth
                        ProfileContentWidget(
                          iconData: Icons.person,
                          contentTitle: "Username",
                          content: "2000-11-17",
                        ),
                        CustomDivider(),

                        // gender
                        ProfileContentWidget(
                          iconData: Icons.male,
                          contentTitle: "Gender",
                          content: "Male",
                        ),
                        CustomDivider(),

                        // address
                        ProfileContentWidget(
                          iconData: Icons.place,
                          contentTitle: "Address",
                          content: "Mirpur-2, Dhaka",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
