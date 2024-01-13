import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/profile/inner_widget/profile_controller.dart';

class ProfileTopSection extends StatelessWidget {

  final ProfileController profileController;

  const ProfileTopSection({required this.profileController, super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.colorGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 48,
                  width: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryColor, width: 2),
                    image: const DecorationImage(image: AssetImage(AppImage.profileAvatarImage), fit: BoxFit.fill)
                  ),
                ),
              ),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mirza Mahmud Hossan",
                    style: GoogleFonts.nunito(
                      color: AppColors.colorBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    )
                  ),
                  const Gap(4),
                  Text(
                    "Mirpur-2, Dhaka",
                    style: GoogleFonts.nunito(
                      color: AppColors.colorBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: (){},
            alignment: Alignment.center,
            icon: Image.asset(AppIcons.editProfileIcon, height: 18, width: 18),
            iconSize: 18
          )
        ],
      ),
    );
  }
}
