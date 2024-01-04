import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_image/app_image.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class SignInTopSection extends StatelessWidget {

  const SignInTopSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImage.appLogoImage, height: 64, width: 64),
        const Gap(12),
        Text(
            "Worker Bridge",
            style: GoogleFonts.nunito(
                color: AppColors.colorBlack,
                fontSize: 24,
                fontWeight: FontWeight.w700
            )
        ),
        const Gap(8),
        Text(
          "helps you to find workers.",
          style: GoogleFonts.nunito(
              color: AppColors.colorGrey,
              fontSize: 16,
              fontWeight: FontWeight.normal
          ),
        )
      ],
    );
  }
}
