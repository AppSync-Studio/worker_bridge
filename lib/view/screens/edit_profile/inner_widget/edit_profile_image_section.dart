import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/global/device_permissions/get_device_permissions.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/edit_profile/inner_widget/edit_profile_controller.dart';
import 'package:worker_bridge/view/widgets/dialog/custom_dialog.dart';
import 'package:worker_bridge/view/widgets/divider/custom_divider.dart';

class EditProfileImageSection extends StatelessWidget {

  final EditProfileController editProfileController;

  const EditProfileImageSection({required this.editProfileController, super.key});

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsetsDirectional.all(4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor, width: 2),
          shape: BoxShape.circle
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 96, width: 96,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: editProfileController.imageFile == null ? const AssetImage(AppImage.profileAvatarImage) : FileImage(editProfileController.imageFile!) as ImageProvider,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.medium
                ),
                shape: BoxShape.circle,
              ),
            ),
            Positioned(
              right: -15, bottom: -15,
              child: IconButton(
                onPressed: () => CustomDialog(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose Options",
                        style: GoogleFonts.nunito(color: AppColors.colorBlack, fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const Gap(16),

                      // galley button
                      TextButton(
                        onPressed: () async {
                          final bool galleryPermissionStatus = await GetDevicePermissions.getStroagePermission();
                          if(galleryPermissionStatus){
                            editProfileController.pickImageFromGallery();
                          }
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 36, width: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.colorGrey.withOpacity(0.1),
                                shape: BoxShape.circle
                              ),
                              child: Image.asset(AppIcons.imageGalleryIcon, height: 18, width: 18),
                            ),
                            const Gap(8),
                            Text(
                              "Gallery",
                              style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ),
                      const CustomDivider(),
                      // camera button
                      TextButton(
                          onPressed: () async {
                            final bool cameraPermissionStatus = await GetDevicePermissions.getCameraPermission();
                            if(cameraPermissionStatus){
                              editProfileController.uploadImageFromCamera();
                            }
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 36, width: 36,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColors.colorGrey.withOpacity(0.1),
                                    shape: BoxShape.circle
                                ),
                                child: Image.asset(AppIcons.cameraIcon, height: 18, width: 18),
                              ),
                              const Gap(8),
                              Text(
                                "Camera",
                                style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 14, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                      )
                    ],
                  )
                ).customDialog(context),
                icon: Container(
                  height: 36, width: 36,
                  padding: const EdgeInsetsDirectional.all(4),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(AppIcons.imageUploadIcon, color: AppColors.colorWhite, height: 18, width: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
